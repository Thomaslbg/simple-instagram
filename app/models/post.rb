class Post < ApplicationRecord
  default_scope { order created_at: :desc }
  belongs_to :user
  has_one_attached :photo
  has_many :likes
  has_many :comments

  def total_likes
    100
  end
end
