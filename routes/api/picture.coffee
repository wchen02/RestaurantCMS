mongoose = require 'mongoose'

exports.get = (req, res) ->
  Picture = mongoose.model('Picture')
  Picture.find().populate('Picture', '-_id')
  .exec (err, pictures) ->
    if err
      console.log 'Got no pictures'
    res.json(pictures)

  return
