should = (require 'chai').should()
mongoose = require 'mongoose'
bulkloader = require 'bulk-loader'
bulkloader.setBasePath __dirname + '/..'

describe 'Models test', ->
#  before ->
#    pictures = require '../fixtures/pictures'
  it 'should bulk load all models', ->
    bulkloader.load '../models', /$/, (err, file, filename)->
      should.not.exist err
      filename.should.be.a('string')
      should.exist file

#  it 'should save picture into mongo', ->
#    Picture = mongoose.model 'Pictures'
