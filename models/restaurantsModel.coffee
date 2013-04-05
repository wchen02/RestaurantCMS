mongoose = require 'mongoose'
RestaurantsSchema = require('./restaurantsSchema').Schema

RestaurantsSchema.methods.getMenu = ->
  console.log 'Getting menu'
  @menu

exports.Model = mongoose.model 'Restaurants', RestaurantsSchema