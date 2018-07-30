class StatenIslandController < ApplicationController
	def index
		sites = Site.all
		si_sites = sites.where(borough_id: 6)
		@si_free_sites = si_sites.where("cost like ?", "%Free%")
		@si_cheap_sites = si_sites.where("cost like ?", "See Notes%")	
	end
	def show
     	sites = Site.all
		si_sites = sites.where(borough_id: 6)
		@site = si_sites.find(params[:id])		
     end
end
