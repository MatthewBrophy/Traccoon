class RaccoonsController < ApplicationController
  def index
    @raccoons = Raccoon.all
  end

  def show 
    @raccoon = Raccoon.find(params[:id])
  end

  def new
    @raccoon = Raccoon.new
  end

  def create
    @raccoon = Raccoon.create(raccoon_params)
    redirect_to raccoon_path(@raccoon)
  end

  private 

  def raccoon_params
    params.require(:raccoons).permit(:name, :color, :size, :gender, :favorite_food, :disposition)
  end
end
