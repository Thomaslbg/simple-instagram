class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates_uniqueness_of :post_id, scope: :user

  after_create :increment_like_count
  before_destroy :decrement_like_count
  private

  def increment_like_count
    Post.find(post_id).increment(:likes_count).save
  end

  def decrement_like_count
    Post.find(post_id).decrement(:likes_count).save
  end

  def total_likes
    100
  end
end
