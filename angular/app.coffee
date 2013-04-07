"use strict"

angular.module("restaurantCms", ['myServices']).config ["$locationProvider", "$routeProvider"
, ($locationProvider, $routeProvider) ->
    $locationProvider.html5Mode(true).hashPrefix('!')
    $routeProvider.when("/",
      templateUrl: "partials/home"
      controller: HomeCtrl
    ).when("/menu",
      templateUrl: "partials/menu"
      controller: MenuCtrl
    ).when("/locations",
      templateUrl: "partials/locations"
      controller: LocationsCtrl
    ).when("/reviews",
      templateUrl: "partials/reviews"
      controller: ReviewsCtrl
    ).when("/gallery",
      templateUrl: "partials/gallery"
      controller: GalleryCtrl
    ).when("/about",
      templateUrl: "partials/about"
      controller: AboutCtrl
    ).otherwise redirectTo: "/"
    return
]