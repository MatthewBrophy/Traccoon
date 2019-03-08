class LocationsController < ApplicationController
     before_action :set_location, only: [:edit, :update, :show]
     before_action :require_login
  
     def new
      @location = Location.new
     end
  
     private 
  
     def set_location
      @location = Location.find(params[:id])
     end
  
     def location_params
      
     end
end
