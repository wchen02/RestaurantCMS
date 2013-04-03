passport = require 'passport'
home = require '../routes'
error = require '../routes/error'
menu = require '../routes/api/menu'
picture = require '../routes/api/picture'

exports.init = (app, options...) ->
  app.get '/', home.index
  app.get '/partials/:name', home.partials
  app.get '/api/menu', passport.authenticate('bearer', {session: false}), menu.get
  app.get '/api/picture', passport.authenticate('bearer', {session: false}), picture.get
  app.all '*', home.index
