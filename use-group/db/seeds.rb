Comment.delete_all
Post.delete_all
User.delete_all

100.times do
  User.create username: Faker::Name.name
end
user_ids = User.pluck(:id)

1000.times do
  Post.create title: Faker::Lorem.sentence, body: Faker::Hipster.paragraph, user_id: user_ids.sample
end
post_ids = Post.pluck(:id)

100000.times do
  Comment.create body: Faker::Hipster.paragraph, rating: [1, 2, 3, 4, 5].sample, approved: [true, false].sample, user_id: user_ids.sample, post_id: post_ids.sample
end
