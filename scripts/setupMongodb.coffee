#!/usr/bin/env coffee

# This is different from doing mongodump and import it
# This script is created for ease of creation of mongodb with collections data and authentication

usuage = "node loadModelData"
# coffee setupMongodb.coffee

try
  exec = (require 'child_process').exec
  process.env['NODE_ENV'] = 'script'
  process.env['NODE_CONFIG_DIR'] = __dirname + '/../config'
  config = require 'config'

  puts = (error, stdout, stderr) ->
    console.log stdout

  loadModel = (error, stdout, stderr) ->
    console.log stdout
    for collection in config.collections
      cmd = "./loadModelData.coffee #{collection}"
      console.log(cmd)
      exec cmd, puts

  addUser = "db.addUser('#{config.db.user}', '#{config.db.password}')"
  host = "#{config.db.host}:#{config.db.port}/#{config.db.dbname}"
  cmd = "mongo #{host} -eval \"#{addUser}\""
  exec cmd, loadModel
catch err
  console.log(err)
  console.log(usuage)
  process.exit(1)

