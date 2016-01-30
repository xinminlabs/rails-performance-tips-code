class PostsController < ApplicationController
  def index
    @posts = Post.select('title').limit(10)
  end
end
