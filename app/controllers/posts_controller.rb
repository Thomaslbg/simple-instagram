class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to dashboard_path, success: "Your post was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index

  end

  private

  def post_params
    params.require(:post).permit(:description, :photo)
  end
end
