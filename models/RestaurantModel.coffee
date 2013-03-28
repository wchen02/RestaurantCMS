mongoose = require 'mongoose'
RestaurantSchema = require('./RestaurantSchema').RestaurantSchema

RestaurantSchema.methods.getMenu = () ->
  console.log 'Getting menu'
  @menu

RestaurantModel = mongoose.model 'Restaurant', RestaurantSchema

exports.Restaurant = RestaurantModel