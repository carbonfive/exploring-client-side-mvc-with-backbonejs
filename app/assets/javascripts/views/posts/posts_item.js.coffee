class Blog.Views.PostsItem extends Backbone.View
  tagName: 'tr'
  template: JST['posts/item']
  render: ->
    $(@el).html(@template(post: @model))
    @
