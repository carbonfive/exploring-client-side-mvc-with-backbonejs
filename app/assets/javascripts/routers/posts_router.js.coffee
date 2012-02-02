class Blog.Routers.Posts extends Backbone.Router
  routes:
    '' : 'index'
    'posts/new' : 'new'
    'posts/:id' : 'show'
  index: ->
    posts = new Blog.Collections.Posts
    new Blog.Views.PostsIndex collection: posts
    posts.fetch()
  new: ->
    post = new Blog.Models.Post
    posts = new Blog.Collections.Posts
    posts.bind 'add', =>
      triggerRouter = true
      @navigate '', triggerRouter
    view = new Blog.Views.PostsNew
      collection: posts
      model: post
    view.render()
  show: (id) ->
    post = new Blog.Models.Post id: id
    view = new Blog.Views.PostsShow model: post
    collection = new Blog.Collections.Posts [post]
    post.fetch()
