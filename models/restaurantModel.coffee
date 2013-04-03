mongoose = require 'mongoose'
RestaurantSchema = require('./restaurantSchema').RestaurantSchema

RestaurantSchema.methods.getMenu = ->
  console.log 'Getting menu'
  @menu

exports.Model = mongoose.model 'Restaurant', RestaurantSchema