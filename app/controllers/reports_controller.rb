class ReportsController < ApplicationController
  before_action :set_report, only: [:edit, :update, :show]
  before_action :current_user

  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
    @report.build_location
  end

  def create
    @report = Report.new(report_params)
    @report.user_id = @current_user.id
    @report.save
  
    redirect_to @report
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
    params.require(:report).permit(:user_id, :time, :location_attributes => {}, :raccoon_ids => [])
  end
end
