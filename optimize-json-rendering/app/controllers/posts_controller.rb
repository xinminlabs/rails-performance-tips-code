class PostsController < ActionController::API
  def index
    @posts = Post.limit(20)
    render json: @posts
  end
end
