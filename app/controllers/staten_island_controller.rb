class StatenIslandController < ApplicationController
	def index
		sites = Site.all
		@si_sites = sites.where(borough_id: 4)
	end
end
