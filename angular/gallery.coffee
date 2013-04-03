window.GalleryCtrl = ($scope, $routeParams, Picture) ->
  #  Picture.query (pictures) ->
  #    $scope.pictures = pictures

  totalPics = 12
  pictureRows = []
  row = []

  for num in [1..totalPics]
    if num == totalPics || num % 4 == 0
      row.push(num)
      pictureRows.push(row)
      row = []
    else
      row.push(num)

  $scope.pictureRows = pictureRows

  $(document).ready ->
    setTimeout( (->
      Holder.run()
      return
    ), 500)
    return
  return


# Dependency Injection
`//GalleryCtrl.$inject = ['$scope', '$routeParams', 'Picture']`