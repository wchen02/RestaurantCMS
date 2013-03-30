mongoose = require 'mongoose'

RestaurantSchema = mongoose.Schema
  _id:
    type: mongoose.Schema.Types.ObjectId
    select: false
  name:
    type: String
    required: true
    index: true
  address:
    type: String
    required: true
  city:
    type: String
    required: true
  state:
    type: String
    required: true
  zip:
    type: Number
    required: true
  telephone:
    type: String
    required: true
    index:
      unique: true
  minimum_order:
    type: Number
    'default': 0
  hours: [
    day:
      type: String
      required: true
    start_hour:
      type: Number
      required: true
    end_hour:
      type: Number
      required: true
  ]
  menu: [
    name:
      type: String
      required: true
    description:
      type: String
    items: [
      name:
        type: String
        required: true
      price:
        type: Number
        required: true
      description:
        type: String
    ]
  ]

exports.RestaurantSchema = RestaurantSchema