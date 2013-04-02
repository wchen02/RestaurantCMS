window.LocationsCtrl = ($scope, $routeParams, Menu) ->
  Menu.query (menu) ->
    $scope.restaurant = menu[0]
  return


# Dependency Injection
`//LocationsCtrl.$inject = ['$scope', '$routeParams', 'Menu']`