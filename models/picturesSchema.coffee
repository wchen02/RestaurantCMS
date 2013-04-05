mongoose = require 'mongoose'

PicturesSchema = mongoose.Schema
  _id:
    type: mongoose.Schema.Types.ObjectId
    select: false
  src:
    type: String
    required: true
    index: true
  caption:
    type: String
  description:
    type: String

exports.Schema = PicturesSchema