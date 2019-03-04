class LocationsController < ApplicationController
     before_action :set_location, only: [:edit, :update, :show]
     
     def index 
      @locations = Location.all
     end
  
     def new
      @location = Location.new
     end
  
     def create
      
     end
  
     def show
      
     end
  
     def update
     end
  
     def edit
     end
  
     private 
  
     def set_location
      @location = Location.find(params[:id])
     end
  
     def location_params
      
     end
end
