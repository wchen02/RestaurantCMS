window.MenuCtrl = ($scope, $routeParams) ->
  counter = -1
  console.log 'menu controller'

  $scope.data =
    name: "Bay Ridge Pizzeria"
    address: "7704 5th Ave, Brooklyn, NY"
    telphone: "718-304-5427"
    menu: [
      section_name: "Appetizers"
      items: [
        name: "Baked Clams"
        price: "$6.95"
      ,
        name: "Shrimp Cocktail"
        price: "$9.00"
      ,
        name: "Mussels Marinara"
        price: "$8.95"
      ,
        name: "Raw Clams"
        price: "$6.50"
      ,
        name: "Fried Calamari"
        price: "$6.50"
      ]
    ,
      section_name: "Beverages"
      items: [
        name: "Fountain Soda"
        price: "$1.25"
      ,
        name: "Bottle of Soda"
        price: "$2.50"
      ,
        name: "20 oz. Snapple"
        price: "$1.75"
      ,
        name: "20 oz. Soda"
        price: "$1.75"
      ]
    ]

  $scope.isOddRow = () ->
    counter++
    counter%4 < 2

  $scope.resetCounter = () ->
    counter = -1
    return

  return


# Dependency Injection
`//MenuCtrl.$inject = ['$scope', '$http']`