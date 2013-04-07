mongoose = require 'mongoose'

exports.get = (req, res) ->
  Reviews = mongoose.model('Reviews')
  Reviews.find().populate('Reviews', '-_id')
  .exec (err, reviews) ->
    if err
      console.log 'Got no reviews'
    res.json(reviews)

  return

exports.save = (req, res) ->
  Reviews = mongoose.model('Reviews')
  review = new Reviews(req.body)
  review.save (err) ->
    if err
      console.log err
      res.json
        error: "An error has occured and the review cannot be posted."
    else
      res.json
        error: null
    return
  return
