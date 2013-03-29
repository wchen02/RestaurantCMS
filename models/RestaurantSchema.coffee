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
  telephone:
    type: String
    required: true
    index:
      unique: true
  restauran:
    type: String
    required: true
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
    section:
      type: String
      required: true
    items: [
      name:
        type: String
        required: true
      price:
        type: Number
        required: true
    ]
  ]

exports.RestaurantSchema = RestaurantSchema