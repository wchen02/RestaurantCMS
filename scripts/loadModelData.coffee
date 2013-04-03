usuage = "node loadModelData.js <modelName> <dataFilename.js>"
#coffee loadModelData.coffee <modelName> <dataFilename.coffee>

try
  console.log("Script start time: " + new Date)
  fs = require "fs"
  mongoose = require "mongoose"
  config = require 'config'

  Model = {}
  modelName = process.argv[2]
  dataFilename = process.argv[3]

  test = (message) ->
    console.log(message)
    return

  loadModel = (exists) ->
    console.log("Loading model...")
    Model = (require modelFilename).Model

    fs.exists dataFilename, loadData
    return

  loadData = (exists) ->
    console.log("Loading data...")
    data = (require dataFilename).data

    console.log("Saving records...")
    for record in data
      modelInstance = `new Model(record)`
      modelInstance.save()
    console.log("Done.")
    setTimeout(()->
      process.exit(0)
      return
    , 500)
    return

  connectionString = 'mongodb://' + config.db.user + ':' + config.db.password + '@' + config.db.host + ':' + config.db.port + '/' + config.db.dbname
  db = mongoose.connect connectionString
  modelFilename = "../models/" + modelName + "Model.coffee"
  fs.exists modelFilename, loadModel

catch err
  console.log(err)
  console.log(usuage)
  process.exit(1)
