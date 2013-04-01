basePath = "../"
files = [
  JASMINE
  JASMINE_ADAPTER
  "public/js/lib/angular.js"
  "public/js/lib/angular-*.js"
  "test/lib/angular/angular-mocks.js"
  "angular/**/*.coffee"
  "test/unit/**/*.coffee"
]
autoWatch = true
browsers = ["Chrome"]
junitReporter =
  outputFile: "test_out/unit.xml"
  suite: "unit"