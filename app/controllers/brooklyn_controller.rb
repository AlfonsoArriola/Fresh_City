class BrooklynController < ApplicationController
	def index
		sites = Site.all
		bk_sites = sites.where(borough_id: 4)
		@bk_free_sites = bk_sites.where("cost like ?", "%Free%")
		@bk_cheap_sites = bk_sites.where("cost like ?", "See Notes%")
	end
end
