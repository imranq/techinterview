class DashboardsController < ApplicationController
  def index
  	@metrics = UserMetric.all
  end

  
end
