mongoose = require 'mongoose'
Schema = require './restaurantsSchema'

Schema.methods.getMenu = ->
  console.log 'Getting menu'
  @menu

module.exports = mongoose.model 'Restaurants', Schema