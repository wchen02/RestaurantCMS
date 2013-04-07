mongoose = require 'mongoose'
Schema = mongoose.Schema
ObjectId = Schema.Types.ObjectId

schema = new Schema
  _id: {type: ObjectId, select: false}
  name: {type: String, required: true, index: true}
  address: {type: String, required: true}
  city: {type: String, required: true}
  state: {type: String, required: true}
  zip: {type: Number, required: true}
  telephone: [
    type: String
    required: true
    index:
      unique: true
  ]
  minimum_order: {type: Number, 'default': 0}
  hours: [
    day: {type: String, required: true}
    start_hour: {type: Number, required: true}
    end_hour: {type: Number, required: true}
  ]
  menu: [
    name: {type: String, required: true}
    description: String
    items: [
      name: {type: String, required: true}
      price: {type: Number, required: true}
      description: String
    ]
  ]

module.exports = schema