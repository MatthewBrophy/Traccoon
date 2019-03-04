class ReportsController < ApplicationController
     before_action :set_report, only: [:edit, :update, :show]
     
     def index 
        @reports = Report.all
     end 
  
     def new 
        @report = Report.new 
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
  
     def set_report
        @report = Report.find(params[:id])
     end
  
     def report_params 
        params.require(:report).permit(:time, :address, :latitude, :longitude)
     end
end
