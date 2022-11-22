class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to dashboard_path, success: "Your comment was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index

  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :post_id)
  end
end
