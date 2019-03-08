class NeighborhoodsController < ApplicationController
  before_action :require_login
def index
  @reports = Report.all
  @neighborhoods = Neighborhood.all
end
def show
  @neighborhood = Neighborhood.find(params[:id])
end

end
