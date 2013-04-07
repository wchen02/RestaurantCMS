mongoose = require 'mongoose'

exports.get = (req, res) ->
  Reviews = mongoose.model('Reviews')
  Reviews.find().populate('Reviews', '-_id')
  .exec (err, reviews) ->
    if err
      console.log 'Got no reviews'
    res.json(reviews)

  return
