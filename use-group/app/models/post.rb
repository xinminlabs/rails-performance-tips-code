class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  define_eager_group :average_rating, :comments, :average, :rating, -> { approved }
end
