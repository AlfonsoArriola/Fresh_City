class ProspectSitesController < ApplicationController
    def index
		@prospects = ProspectSite.all
	end
	def create
		@prospect = ProspectSite.create(prospect_params)
		if @prospect.valid?
		 	flash[:notice] = "Success! We'll check this location out soon."
		     redirect_to root_path
		else
		 	flash[:notice] = "Invalid Input"
		 	render :new
		 end
	end
	def new
		@prospect = ProspectSite.new
	end
	def edit
		@prospect = ProspectSite.find(params[:id])
	end
	def show
		@prospect = ProspectSite.find(params[:id])
	end
	def update
	    prospect = ProspectSite.find(params[:id])
	    prospect.update(prospect_params)
	    redirect_to prospect_sites_path	
	end
	def destroy
		ProspectSite.destroy(params[:id])
		redirect_to prospect_sites_path
	end

	private

	def prospect_params
		params.require(:prospect_site).permit(:name, :location, :e_mail, :phone, :comment)
	end
end
