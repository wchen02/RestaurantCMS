mongoose = require 'mongoose'
RestaurantSchema = require('./restaurantSchema').RestaurantSchema

RestaurantSchema.methods.getMenu = ->
  console.log 'Getting menu'
  @menu

RestaurantModel = mongoose.model 'Restaurant', RestaurantSchema

exports.Restaurant = RestaurantModel