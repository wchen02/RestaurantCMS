mongoose = require 'mongoose'
RestaurantSchema = require('./restaurantSchema').Schema

RestaurantSchema.methods.getMenu = ->
  console.log 'Getting menu'
  @menu

exports.Model = mongoose.model 'Restaurant', RestaurantSchema