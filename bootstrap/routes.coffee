passport = require 'passport'
home = require '../routes'
error = require '../routes/error'
menu = require '../routes/api/menu'
picture = require '../routes/api/picture'
review = require '../routes/api/review'

exports.init = (app, options...) ->
  app.get '/', home.index
  app.get '/partials/:name', home.partials
  app.get '/api/menu', passport.authenticate('bearer', {session: false}), menu.get
  app.get '/api/picture', passport.authenticate('bearer', {session: false}), picture.get
  app.get '/api/review', passport.authenticate('bearer', {session: false}), review.get
  app.post '/api/review', passport.authenticate('bearer', {session: false}), review.save
  app.all '*', home.index
