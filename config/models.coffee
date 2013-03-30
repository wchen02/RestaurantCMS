fs = require 'fs'
path = require 'path'
_ = require 'underscore'

getFileExtension = (filename) ->
  ext = path.extname(filename||'').split('.')
  ext[ext.length - 1]

exports.initModels = (options...) ->
  files = fs.readdirSync './models/'

  modelFiles = _.filter files, (filename) ->
    (filename.lastIndexOf 'Model.coffee') > 0

  _.each modelFiles, (filename) ->
    require '../models/' + filename
    console.log 'Loading ' + filename
    return

  return