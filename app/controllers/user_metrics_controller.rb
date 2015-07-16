class UserMetricsController < ApplicationController
	def index
	  	@metrics = UserMetric.all
	end
end
