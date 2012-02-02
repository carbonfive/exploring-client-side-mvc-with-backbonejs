class Blog.Views.PostsIndex extends Backbone.View
  el: '#app'
  template: JST['posts/index']
  initialize: ->
    @collection.bind 'reset', @render, @
  render: ->
    $(@el).html(@template())
    @collection.each (post) =>
      view = new Blog.Views.PostsItem model: post
      @$('#posts').append(view.render().el)
    @
