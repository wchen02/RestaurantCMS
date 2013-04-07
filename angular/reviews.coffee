window.ReviewsCtrl = ($scope, $routeParams, Review) ->
  Review.query (reviews) ->
    $scope.reviews = reviews
    return

  resetForm = ->
    $scope.message = ''
    $scope.rating = 5
    $scope.username = ''
    $scope.city = ''
    $scope.state = 'NY'

  $scope.addReview = ->
    data =
      message: $scope.message
      timestamp: new Date()
      rating: $scope.rating
      user:
        username: $scope.username
        city: $scope.city
        state: $scope.state
    review = new Review data
    review.$save();

    $scope.reviews.push data
    resetForm()

    return


  resetForm()
  return


# Dependency Injection
`//LocationsCtrl.$inject = ['$scope', '$routeParams', 'Review']`