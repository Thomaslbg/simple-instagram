class UsersController < ApplicationController
  before_action :set_user, only: [:profile]
  def index
    @posts = Post.all
    @followers_suggestions = User.where.not(id: current_user.id)
  end

  def profile
  end

  def set_user
    @user = User.find_by_username(params[:username])
  end

  def follow_user
    user_id = params[:follower][:following]

    if Follower.create!(following_user_id: user_id, follow_user_id: current_user.id)
      redirect_to dashboard_path
      flash[:success] = "now following user"
    else
       flash[:success] = "unable to follow user"
    end
  end


end
