window.ReviewsCtrl = ($scope, $routeParams, Review) ->
  Review.query (reviews) ->
    $scope.reviews = reviews
    return
  $scope.rating = 5
  $scope.state = "NY"

  $scope.addReview = ->
    data.push
      message: $scope.message
      timestamp: new Date()
      rating: $scope.rating
      user:
        username: $scope.username
        city: $scope.city
        state: $scope.state
    return
  return


# Dependency Injection
`//LocationsCtrl.$inject = ['$scope', '$routeParams', 'Review']`