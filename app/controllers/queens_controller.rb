class QueensController < ApplicationController
	def index
		sites = Site.all
		@q_sites = sites.where(borough_id: 2)
	end
end
