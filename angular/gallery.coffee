window.GalleryCtrl = ($scope, $routeParams, Picture) ->
  target = null
  Picture.query (pictures) ->
    totalPics = pictures.length
    pictureRows = []
    row = []

    for num in [1..totalPics]
      if num == totalPics || num % 4 == 0
        row.push(pictures[num-1])
        pictureRows.push(row)
        row = []
      else
        row.push(pictures[num-1])

    $scope.pictureRows = pictureRows

    $(document).ready ->
      setTimeout( (->
        Holder.run()
        $(".thumbnail a img").fancybox(
          beforeShow: () ->
            target = $(@element[0])
            return

          afterClose: () ->
            $(target).show()
            return
        )

        return
      ), 500)
      return
    return
  return


# Dependency Injection
`//GalleryCtrl.$inject = ['$scope', '$routeParams', 'Picture']`