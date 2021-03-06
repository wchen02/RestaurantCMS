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
.factory "Review", ($resource) ->
  $resource "api/review?access_token=" + accessToken, {},
    query:
      method: "GET"
      isArray: true
    save:
      method: "POST"
      isArray: false


