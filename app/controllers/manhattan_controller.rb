class ManhattanController < ApplicationController
	def index
		sites = Site.all
		m_sites = sites.where(borough_id: 3)
		@m_free_sites = m_sites.where("cost like ?", "%Free%")
		@m_cheap_sites = m_sites.where("cost like ?", "See Notes%")		
	end
end
