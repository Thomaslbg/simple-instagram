class UsersController < ApplicationController
  before_action :set_user, only: [:profile]
  def index
    @posts = Post.all
  end

  def profile
  end

  def set_user
    @user = User.find_by_username(params[:username])
  end


end
