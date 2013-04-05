mongoose = require 'mongoose'
PicturesSchema = require('./picturesSchema').Schema

exports.Model = mongoose.model 'Pictures', PicturesSchema