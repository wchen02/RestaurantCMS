home = require '../routes'
error = require '../routes/error'

exports.initRoutes = (app) ->
  app.get '/', home.index
  app.all '*', error.notFound
