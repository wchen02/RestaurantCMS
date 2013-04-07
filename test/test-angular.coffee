tests = Object.keys(window.__karma__.files).filter((file) ->
  /Spec\.coffee-compiled\.js$/.test file
)

requirejs.config
  # Karma serves files from '/base'
  baseUrl: "/base"
  paths:
    require: "../lib/require"
    text: "../lib/text"


  # ask requirejs to load these files (all our tests)
  deps: tests

  # start test run, once requirejs is done
  callback: window.__karma__.start
