class Post < ApplicationRecord
  belongs_to :post
  belongs_to :user 

  def total_likes
    100
  end
end
