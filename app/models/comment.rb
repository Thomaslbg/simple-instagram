class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  after_create :increment_comment_count
  before_destroy :decrement_comment_count
  private

  def increment_comment_count
    Post.find(post_id).increment(:comments_count).save
  end

  def decrement_comment_count
    Post.find(post_id).decrement(:comments_count).save
  end
end
