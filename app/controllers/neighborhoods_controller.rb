class NeighborhoodsController < ApplicationController
  before_action :require_login
def index
  @neighborhoods = Neighborhood.all
end
def show
  @neighborhood = Neighborhood.find(params[:id])
end

end
