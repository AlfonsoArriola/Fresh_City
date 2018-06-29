class SitesController < ApplicationController
	def index
		@sites = Site.all
	end
	def create
		@site = Site.create(site_params)
	end
	def new
		@site = Site.new
	end
	def edit
		@student = Site.find(params[:id])
	end
	def show
		@site = Site.find(params[:id])
	end
	def update
	    site = Site.find(params[:id])
	    site.update(site_params)
	    redirect_to sites_path	
	end
	def destroy
		Site.destroy(params[:id])
		redirect_to sites_path
	end

	private

	def site_params
		params.require(:site).permit()
	end
end
