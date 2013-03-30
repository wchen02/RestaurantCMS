express = require 'express'
http = require 'http'
path = require 'path'
mongoose = require 'mongoose'
config = require 'config'
routes = require './config/routes'
bulkloader = require 'bulk-loader'

db = null
app = express()

app.configure ->
  app.set 'port', process.env.PORT or 3000
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'jade'
  app.use express.favicon()
  app.use express.logger('dev')
  app.use express.bodyParser()
  app.use express.methodOverride()
  # jslint highlights express.static as error
  app.use express['static'](path.join(__dirname, 'public'))
  app.use app.router

app.configure "development", ->
  app.use express.errorHandler()
  console.log 'Connecting to MongoDB: ' + config.db.host + ':' + config.db.port + '/' + config.db.dbname
  db = mongoose.connect 'mongodb://' + config.db.user + ':' + config.db.password + '@' + config.db.host + ':' + config.db.port + '/' + config.db.dbname
  connection = mongoose.connection
  connection.on 'error', console.error.bind(console, 'connection error:')
  connection.once 'open', () ->
    console.log 'Connection to MongoDb has successfully been established.'

    return


# Routes
routes.initRoutes(app)
#models.initModels()
bulkloader.load('./models/', /Model.coffee/, (err, file, filename) ->
  if err
    console.log 'Error ' + filename
  else
    console.log 'Loaded ' + filename
  return
)

http.createServer(app).listen app.get('port'), ->
  console.log 'Express server listening on port ' + app.get('port')
