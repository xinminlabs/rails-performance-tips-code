class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  scope :approved, -> { where(approved: true) }
end
