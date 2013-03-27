"use strict"

angular.module("restaurantCms", []).config ["$routeProvider", ($routeProvider) ->
  $routeProvider.when("/menu",
    templateUrl: "partials/menu.jade"
    controller: MenuCtrl
  ).when("/about",
    templateUrl: "partials/about.jade"
    controller: AboutCtrl
  ).otherwise redirectTo: "/"
]