class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar, dependent: :destroy
  has_many :posts
  has_many :likes
  has_many :comments
  has_many :follow_user_followers, class_name: 'Follower',
                            foreign_key: 'follow_user'
  has_many :following_user_followers, class_name: 'Follower',
                            foreign_key: 'following_user'



  def num_of_followers

    Follower.where(following_user_id: self.id).count
  end

  def num_of_following
    Follower.where(follow_user_id: self.id).count
  end

end
