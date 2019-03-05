class ReportsController < ApplicationController
  before_action :set_report, only: [:edit, :update, :show]

  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
    @report.build_location
  end

  def create
    @report = Report.new(report_params)
    @report.location.neighborhood = @report.neighborhood
    @report.save
    @report.location_id = @report.location.id
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
    params.require(:report).permit(:user, :time, :neighborhood, :raccoon, :user_id, :neighborhood_id, :raccoon_ids, :location_attributes => {})
  end
end
