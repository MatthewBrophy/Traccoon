class CommentsController < ApplicationController
  before_action :current_user
  before_action :require_login

 

  def new
    @comment = Comment.new
  end 

  def create
    @comment = Comment.new(comment_params)
    @raccoon = Raccoon.find(params[:raccoon_id])
    @comment.user_id = @current_user.id
    @comment.raccoon_id = @raccoon.id
    @comment.save
    redirect_to raccoon_path(@raccoon)
  end


private
  def comment_params
    params.require(:comment).permit(:user_id, :raccoon_id, :comment_title, :comment_text)
  end

end
