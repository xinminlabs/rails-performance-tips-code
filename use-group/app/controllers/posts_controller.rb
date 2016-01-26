class PostsController < ApplicationController
  def index
    @posts = Post.eager_group(:average_rating).limit(10)
  end
end
