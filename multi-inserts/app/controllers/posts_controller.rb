class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def import
    posts = []
    10.times do
      posts << Post.new(title: Faker::Lorem.sentence, body: Faker::Hipster.paragraph, user_id: rand(100) + 1)
    end
    Post.import posts
  end
end
