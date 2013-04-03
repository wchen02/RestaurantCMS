"use strict"

accessToken = "ZeeAccessToken"
# Services
angular.module("myServices", ["ngResource"])
.factory "Menu", ($resource) ->
  $resource "api/menu?access_token=" + accessToken, {},
    query:
      method: "GET"
      isArray: true
.factory "Picture", ($resource) ->
  $resource "api/picture?access_token=" + accessToken, {},
    query:
      method: "GET"
      isArray: true

