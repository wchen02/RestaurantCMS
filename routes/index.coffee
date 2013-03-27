exports.index = (req, res) ->
  res.render 'index', { title: 'Express' }

exports.partials = (req, res) ->
  res.render 'partials/' + req.params.name
