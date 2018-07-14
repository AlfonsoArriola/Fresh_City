class TheBronxController < ApplicationController
	def index
		sites = Site.all
		bx_sites = sites.where(borough_id: 1)
		@bx_free_sites = bx_sites.where("cost like ?", "%Free%")
		@bx_cheap_sites = bx_sites.where("cost like ?", "See Notes%")
	end
     def show
     	sites = Site.all
		bx_sites = sites.where(borough_id: 1)
		@site = bx_sites.find(params[:id])	
		@map = Rails.application.credentials.development[:google_places_key]	
	

     end
end
