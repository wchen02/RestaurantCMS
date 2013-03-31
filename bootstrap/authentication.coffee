passport = require 'passport'
BearerStrategy = (require 'passport-http-bearer').Strategy

exports.init = (app, options...) ->
  app.configure ->
    app.use passport.initialize()
    app.use passport.session()

    # Router needs to be ran after passport
    app.use app.router

  passport.use new BearerStrategy((token, done) ->
    accessToken = 'ZeeAccessToken'
    if token == accessToken
      user =
        firstname: 'Wensheng'
        lastname: 'Chen'

      return done null, user
    return done 'You are not allowed to see this page', null
  )

  return
