class TheBronxController < ApplicationController
	def index
		sites = Site.all
		bx_sites = sites.where(borough_id: 1)
		@bx_free_sites = bx_sites.where("cost like ?", "%Free%")
		@bx_cheap_sites = bx_sites.where("cost like ?", "See Notes%")
	end
end
