class QueensController < ApplicationController
	def index
		sites = Site.all
		q_sites = sites.where(borough_id: 2)
		@q_free_sites = q_sites.where("cost like ?", "%Free%")
		@q_cheap_sites = q_sites.where("cost like ?", "See Notes%")
	end
end
