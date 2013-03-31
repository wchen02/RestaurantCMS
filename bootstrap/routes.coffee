passport = require 'passport'
home = require '../routes'
error = require '../routes/error'
menu = require '../routes/api/menu'

exports.init = (app, options...) ->
  app.get '/', home.index
  app.get '/partials/:name', home.partials
  app.get '/api/menu', passport.authenticate('bearer', {session: false}), menu.get
  app.all '*', error.notFound
