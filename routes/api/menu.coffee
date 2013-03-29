mongoose = require 'mongoose'

exports.get = (req, res) ->
  Restaurant = mongoose.model('Restaurant')
  Restaurant.find().populate('Restaurant', '-_id')
  .exec (err, restaurants) ->
    if err
      console.log 'Got no restaurants'
    res.json(restaurants)

  return
