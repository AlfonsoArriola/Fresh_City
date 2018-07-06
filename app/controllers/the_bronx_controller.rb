class TheBronxController < ApplicationController
	def index
		sites = Site.all
		@bx_sites = sites.where(borough_id: 1)	
	end
end
