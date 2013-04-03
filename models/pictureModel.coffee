mongoose = require 'mongoose'
PictureSchema = require('./pictureSchema').PictureSchema

exports.Picture = mongoose.model 'Picture', PictureSchema