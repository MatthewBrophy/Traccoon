class CommentsController < ApplicationController

  def index
  @comments = Comment.all
  end
  
  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end 

  def create
    
  end

# private
#   def comment_params
#     params.require(:comments).permit()
#   end

end
