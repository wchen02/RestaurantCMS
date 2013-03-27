home = require '../routes'
error = require '../routes/error'

exports.initRoutes = (app) ->
  app.get '/', home.index
  app.get '/partials/:name', home.partials
  app.all '*', error.notFound
