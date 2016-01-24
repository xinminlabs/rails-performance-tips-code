class PostsController < ApplicationController
  def index
    @posts = Post.limit(10)
  end
end
