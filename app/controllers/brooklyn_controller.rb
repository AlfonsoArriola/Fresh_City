class BrooklynController < ApplicationController
	def index
		sites = Site.all
		@bk_sites = sites.where(borough_id: 5)
	end
end
