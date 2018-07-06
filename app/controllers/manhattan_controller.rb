class ManhattanController < ApplicationController
	def index
		sites = Site.all
		@m_sites = sites.where(borough_id: 3)		
	end
end
