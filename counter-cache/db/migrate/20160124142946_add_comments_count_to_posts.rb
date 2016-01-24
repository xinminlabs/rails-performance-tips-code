class AddCommentsCountToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :comments_count, :integer
    Post.all.each do |post|
      Post.reset_counters(post.id, :comments)
    end
  end
end
