mongoose = require 'mongoose'
Schema = require './usersSchema'

module.exports = mongoose.model 'Users', Schema