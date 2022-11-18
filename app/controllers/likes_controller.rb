class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def save_like
    @like = Like.new(post, user = current_user )


    respond_to do |f|
      format.json{
        if @like.save
          {success: true}
        else
          {success: false}
        end
      }
    end
  end

  def index

  end

  private

  def like_params
    params.require(:like).permit(:description, :photo)
  end
end
