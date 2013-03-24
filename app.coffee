express = require 'express'
routes = require './routes'
http = require 'http'
path = require 'path'
mongoose = require 'mongoose'
config = require 'config'

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
  db = mongoose.connect 'mongodb://' + config.db.user + ':' + config.db.password + '@' + config.db.host + ':' + config.db.port + '/' + config.db.dbname

# Routes
app.get '/', routes.index

http.createServer(app).listen app.get('port'), ->
  console.log 'Express server listening on port ' + app.get('port')
