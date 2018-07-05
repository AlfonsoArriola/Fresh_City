class SiteBoroughsController < ApplicationController
	def index
		@sites_n_boros = Siteborough.all
	end

	def create
		@site_n_boro = Siteborough.create(site_n_boro_params)
	end
	def edit
		@site_n_boro = Siteborough.find(params[:id])
	end
	def show
		@site_n_boro = Siteborough.find(params[:id])
	end
	def update
		@site_n_boro = Siteborough.find(params[:id])
		site_n_boro.update(site_n_boro_params)
		redirect_to site_boroughs_path
	end

	def destroy
		Siteborough.destroy(params[:id])
		redirect_to site_boroughs_path
	end

	private

	def site_n_boro
		params.require(:site_boroughs)
	end
end
