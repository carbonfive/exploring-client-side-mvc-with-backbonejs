class Blog.Views.PostsShow extends Backbone.View
  el: '#app'
  template: JST['posts/show']
  initialize: ->
    @model.bind 'change', @render, @
  render: ->
    $(@el).html(@template(post: @model))
    @
