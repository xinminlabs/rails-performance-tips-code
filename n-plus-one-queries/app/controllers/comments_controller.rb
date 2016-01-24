class CommentsController < ApplicationController
  def index
    @comments = Comment.limit(10)
  end
end
