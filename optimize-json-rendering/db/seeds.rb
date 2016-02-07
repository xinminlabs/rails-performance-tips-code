Comment.delete_all
Post.delete_all
User.delete_all

100.times do
  User.create username: Faker::Name.name
end
first_user_id = User.first.id

1000.times do
  Post.create title: Faker::Lorem.sentence, body: Faker::Hipster.paragraph, user_id: rand(100) + first_user_id
end
first_post_id = Post.first.id

100000.times do
  Comment.create body: Faker::Hipster.paragraph, user_id: rand(100) + first_user_id, post_id: rand(1000) + first_post_id
end
