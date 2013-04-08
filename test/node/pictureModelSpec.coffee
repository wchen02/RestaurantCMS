should = (require 'chai').should()

loadData = (filename) ->
  require '../fixtures/' + filename

describe 'Picture Models', ->
  mongoose = require 'mongoose'
  bulkloader = require 'bulk-loader'
  config = require 'config'
  Picture = null

  before ->
    bulkloader.setBasePath __dirname + '/..'
    mongoose.connect 'mongodb://' + config.db.user + ':' + config.db.password + '@' + config.db.host + ':' + config.db.port + '/' + config.db.dbname

    Picture = require '../../models/picturesModel'

  after ->
    mongoose.connection.close()

  afterEach (done)->
    Picture.remove({}, done)

  it 'should create and save Picture', (done)->
    data = (loadData 'pictures').data
    picture = new Picture data[0]
    picture.save (err)->
      should.not.exist err

      Picture.find (err, results)->
        should.not.exist err
        results.should.have.property 'length', 1
        done()
