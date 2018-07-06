class SitesController < ApplicationController
	def index
		@sites = Site.all
	end
	def create
		@site = Site.create(site_params)
		@boroughs = Borough.all
		 if @site.valid?
		 	flash[:notice] = "Success! added a NEW Site"
		 	redirect_to sites_path
		 else
		 	flash[:notice] = "Invalid Input"
		 	render :new
		 end
	end
	def new
		@site = Site.new
		@boroughs = Borough.all
	end
	def edit
		@site = Site.find(params[:id])
		@boroughs = Borough.all
	end
	def show
		@site = Site.find(params[:id])
	end
	def update
		@boroughs = Borough.all
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
		params.require(:site).permit(:name, :address, :phone, :location_type, :gender, :age_range, :days_of_the_week_and_hours_of_operation, :towel, :shower_shoe, :soap, :feminine_hygiene, :note, :website, :borough_id)
	end
 
end
