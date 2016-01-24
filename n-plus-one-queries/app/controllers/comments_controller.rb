class CommentsController < ApplicationController
  def index
    @comments = Comment.includes(:user).limit(10)
  end
end
