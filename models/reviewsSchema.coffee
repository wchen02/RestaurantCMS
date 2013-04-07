mongoose = require 'mongoose'
Schema = mongoose.Schema
ObjectId = Schema.Types.ObjectId

UsersSchema = require './usersSchema'

schema = new Schema
  _id: {type: ObjectId, select: false}
  message: {type: String, required: true}
  timestamp: {type: Date, 'default': Date.now}
  rating: {type: Number, max: 5, min: 1, required: true}
  user:
    username: {type: String, required: true}
    city: {type: String, required: true}
    state: {type: String, required: true}

module.exports = schema