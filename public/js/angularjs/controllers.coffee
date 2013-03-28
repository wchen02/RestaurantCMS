window.MenuCtrl = ($scope, $routeParams) ->
  console.log 'menu controller'
  return


# Dependency Injection
`//MenuCtrl.$inject = ['$scope', '$http']`

window.AboutCtrl = ($scope, $routeParams) ->
  console.log 'aboutcontroller'
  return

`//AboutCtrl.$inject = ['$scope', '$routeParams']`

window.HomeCtrl = ($scope, $routeParams) ->
  Holder.run()
  console.log 'homecontroller'
  return

`//HomeCtrl.$inject = ['$scope', '$routeParams']`