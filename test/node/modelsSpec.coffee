should = (require 'chai').should()
mongoose = require 'mongoose'
bulkloader = require 'bulk-loader'
config = require 'config'
bulkloader.setBasePath __dirname + '/..'
#mongoose.connect 'mongodb://' + config.db.user + ':' + config.db.password + '@' + config.db.host + ':' + config.db.port + '/' + config.db.dbname

loadData = (filename) ->
  require '../fixtures/' + filename

describe 'Models: ', ->
  before ->
    console.log([process.env['NODE_ENV']])
    console.log(config.db.password)
  after ->
    mongoose.connection.close()

  pictures = restaurants = reviews = null

  beforeEach ->
      pictures = loadData 'pictures'
      restaurants = loadData 'restaurants'
      reviews = loadData 'reviews'

  afterEach ->
    pictures = restaurants = reviews = null

  describe 'Bulk loading', ->
    it 'should bulk load all models', ->
      bulkloader.load '../models', /$/, (err, file, filename)->
        should.not.exist err
        filename.should.be.a('string')
        should.exist file

#  describe 'Pictures Model', ->
#    it 'should create and save picture into mongo db', ->
#      Picture = mongoose.model 'Pictures'
#      result = Picture.find()
#      result.should.be.empty
#      picture = new Picture pictures
#      picture.save()
#      result = Picture.find()
#      result.should.have.length.equal(1)