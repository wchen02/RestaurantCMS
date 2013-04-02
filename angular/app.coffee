"use strict"

angular.module("restaurantCms", ['myServices']).config ["$locationProvider", "$routeProvider"
, ($locationProvider, $routeProvider) ->
    $locationProvider.html5Mode(true).hashPrefix('!')
    $routeProvider.when("/menu",
      templateUrl: "partials/menu"
      controller: MenuCtrl
    ).when("/about",
      templateUrl: "partials/about"
      controller: AboutCtrl
    ).when("/",
      templateUrl: "partials/home"
      controller: HomeCtrl
    ).when("/locations",
      templateUrl: "partials/locations"
      controller: LocationsCtrl
    ).otherwise redirectTo: "/"
]