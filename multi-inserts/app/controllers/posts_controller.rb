class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def import
    10.times do
      Post.create title: Faker::Lorem.sentence, body: Faker::Hipster.paragraph, user_id: rand(100) + 1
    end
  end
end
