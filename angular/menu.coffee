window.MenuCtrl = ($scope, $routeParams, Menu) ->
  counter = -1
  console.log 'menu controller'

  Menu.query (menu) ->
    $scope.data = menu[0]


  $scope.isOddRow = () ->
    counter++
    counter % 4 < 2

  $scope.resetCounter = () ->
    counter = -1
    return

  return


# Dependency Injection
`//MenuCtrl.$inject = ['$scope', '$routeParams', 'Menu']`