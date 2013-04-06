mongoose = require 'mongoose'

Schema = mongoose.Schema
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

module.exports = Schema