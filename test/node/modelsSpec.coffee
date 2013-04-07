should = (require 'chai').should()

loadData = (filename) ->
  require '../fixtures/' + filename

describe 'Models ', ->
  mongoose = require 'mongoose'
  bulkloader = require 'bulk-loader'
  config = require 'config'

  before ->
    bulkloader.setBasePath __dirname + '/..'
    mongoose.connect 'mongodb://' + config.db.user + ':' + config.db.password + '@' + config.db.host + ':' + config.db.port + '/' + config.db.dbname

  after ->
    mongoose.connection.close()

  describe 'Bulk loading', ->
    it 'should bulk load all models', ->
      bulkloader.load '../models', /$/, (err, file, filename)->
        should.not.exist err
        filename.should.be.a('string')
        should.exist file
