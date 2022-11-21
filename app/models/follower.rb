class Follower < ApplicationRecord
  # belongs_to :users
  belongs_to :follow_user, class_name: 'User'
  belongs_to :following_user, class_name: 'User'


end
