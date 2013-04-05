mongoose = require 'mongoose'

exports.get = (req, res) ->
  Restaurants = mongoose.model('Restaurants')
  Restaurants.find().populate('Restaurants', '-_id')
  .exec (err, restaurants) ->
    if err
      console.log 'Got no restaurants'
    res.json(restaurants)

  return
