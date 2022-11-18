class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def save_like
    @like = Like.new(post_id: params[:post_id], user: current_user )
    @post_id = params[:post_id]
    current_like = Like.where(post_id: params[:post_id], user: current_user)

    respond_to do |format|
      format.js{
        if current_like.any?
          current_like.first.destroy
          @success = false
        elsif @like.save
          @success = true
        else
          @success = false
        end
      }
    end
    @post_likes = Post.find(@post_id).likes_count

    render "posts/like"
  end

  def index

  end

  private

  # def like_params
  #   params.require(:like).permit(:description, :photo)
  # end
end
