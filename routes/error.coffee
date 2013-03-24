exports.notFound = (req, res) ->
  res.render 'error', {title: '404 Page Not Found'}
