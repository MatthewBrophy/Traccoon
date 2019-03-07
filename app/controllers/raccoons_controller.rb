class RaccoonsController < ApplicationController
  before_action :current_user
  before_action :require_login
  def index
    @raccoons = Raccoon.all
  end

  def show 
    @raccoon = Raccoon.find(params[:id])
    @comment = Comment.new
  end

  def new
    @raccoon = Raccoon.new
  end

  def create

    @raccoon = Raccoon.new(raccoon_params)
    @raccoon.picture = @raccoon.pictures.sample
    @raccoon.user_id = session[:user_id]
    @raccoon.save
    redirect_to new_report_path
  end

  def track
    @raccoon = Raccoon.find(params[:id])
  end

  private 

  def raccoon_params
    params.require(:raccoon).permit(:name, :color, :size, :gender, :favorite_food, :disposition, :picture, :user_id)
  end
end
