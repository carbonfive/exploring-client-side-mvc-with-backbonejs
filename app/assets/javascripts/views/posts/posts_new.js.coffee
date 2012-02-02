class Blog.Views.PostsNew extends Backbone.View
  el: '#app'
  template: JST['posts/new']
  events:
    'submit form' : 'create'
  render: ->
    $(@el).html(@template(post: @model))
    @$('form').validate
      rules:
        title: 'required'
        body: 'required'
    @
  create: (event) ->
    event.preventDefault()
    @collection.create
      title: @$('#title').val()
      body: @$('#body').val()
