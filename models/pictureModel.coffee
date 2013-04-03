mongoose = require 'mongoose'
PictureSchema = require('./pictureSchema').Schema

exports.Model = mongoose.model 'Picture', PictureSchema