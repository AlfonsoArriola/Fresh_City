class BoroughsController < ApplicationController
	def index
		@boroughs = Borough.all
	end
	def create
		@borough = Borough.create(borough_params)
	end
	def new
		@borough = Borough.new
	end
	def edit
		@borough = Borough.find(params[:id])
	end
	def show
		@borough = Borough.find(params[:id])
	end
	def update
		borough = Borough.find(params[:id])
		borough.update(borough_params)
		redirect_to boroughs_path
	end
	def destroy 
		Borough.destroy(params[:id])
		redirect_to boroughs_path
	end

	private

	def borough_params
		params.require(:borough).permit(:name, :site_id)
	end
end
