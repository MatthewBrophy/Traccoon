class WelcomesController < ApplicationController
  before_action :require_login

def show
  @home = Neighborhood.find(@current_user.neighborhood_id)
end

end