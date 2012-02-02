window.Blog =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Blog.Routers.Posts
    Backbone.history.start()

$(document).ready ->
  Blog.init()
