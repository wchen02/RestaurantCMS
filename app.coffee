express = require 'express'
routes = require './config/routes'
http = require 'http'
path = require 'path'
mongoose = require 'mongoose'
config = require 'config'
Restaurant = require('./models/RestaurantModel').Restaurant

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
  app.use express.errorHandler(
                                dumpExceptions: true
                                showStack: true
                              )
  dbString = 'mongodb://' + config.db.user + ':' + config.db.password + '@' + config.db.host + ':' + config.db.port + '/' + config.db.dbname
  console.log 'Connecting to: ' + dbString
  db = mongoose.connect dbString
  connection = mongoose.connection
  connection.on 'error', console.error.bind(console, 'connection error:')
  connection.once 'open', () ->
    console.log('Connection to MongoDb has successfully been established.')

    return


# Routes
routes.initRoutes(app)

http.createServer(app).listen app.get('port'), ->
  console.log 'Express server listening on port ' + app.get('port')
