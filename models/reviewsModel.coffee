mongoose = require 'mongoose'
Schema = require './reviewsSchema'

module.exports = mongoose.model 'Reviews', Schema