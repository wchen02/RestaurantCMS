mongoose = require 'mongoose'

exports.get = (req, res) ->
  Pictures = mongoose.model('Pictures')
  Pictures.find().populate('Pictures', '-_id')
  .exec (err, pictures) ->
    if err
      console.log 'Got no pictures'
    res.json(pictures)

  return
