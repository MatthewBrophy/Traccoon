class ReportsController < ApplicationController
     before_action :set_report, only: [:edit, :update, :show]
     before_action :current_user
     before_action :require_login
     
     def index 
        @reports = Report.all
     end 
  
     def new 
        @report = Report.new 
     end 
  
     def create 
      @report = Report.create(report_params)
      # redirect_to report_path(@report)
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
        params.require(:report).permit(:time, :neighborhood_id)
     end
end
