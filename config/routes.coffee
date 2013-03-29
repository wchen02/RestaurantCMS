home = require '../routes'
error = require '../routes/error'
menu = require '../routes/api/menu'

exports.initRoutes = (app) ->
  app.get '/', home.index
  app.get '/partials/:name', home.partials
  app.get '/api/menu', menu.get
  app.all '*', error.notFound
