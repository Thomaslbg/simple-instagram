class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar, dependent: :destroy
  has_many :posts
  has_many :likes
  has_many :follow_user_followers, class_name: 'Follower',
                            foreign_key: 'follow_user'
  has_many :following_user_followers, class_name: 'Follower',
                            foreign_key: 'following_user'

  def num_of_followers
    0
  end

  def num_of_following
    0
  end

end
