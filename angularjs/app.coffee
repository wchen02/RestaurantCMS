"use strict"

angular.module("restaurantCms", []).config ["$routeProvider", ($routeProvider) ->
  $routeProvider.when("/menu",
    templateUrl: "partials/menu"
    controller: MenuCtrl
  ).when("/about",
    templateUrl: "partials/about"
    controller: AboutCtrl
  ).when("/",
    templateUrl: "partials/home"
    controller: HomeCtrl
  ).otherwise redirectTo: "/"
]