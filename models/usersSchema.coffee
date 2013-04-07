mongoose = require 'mongoose'
Schema = mongoose.Schema
ObjectId = Schema.Types.ObjectId

schema = new Schema
  _id: {type: ObjectId, select: false}
  username: {type: String, required: true}
  city: {type: String, required: true}
  state: {type: String, required: true}

module.exports = schema