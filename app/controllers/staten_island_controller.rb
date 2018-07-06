class StatenIslandController < ApplicationController
	def index
		sites = Site.all
		si_sites = sites.where(borough_id: 4)
		@si_free_sites = si_sites.where("cost like ?", "%Free%")
		@si_cheap_sites = si_sites.where("cost like ?", "See Notes%")	
	end
end
