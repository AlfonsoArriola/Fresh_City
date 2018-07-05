class TrainsSitesController < ApplicationController
	def new
		@trainsite = TrainsSite.new
	end
	def create
		@trainsite = TrainsSite.create
	end
	def edit
		@trainsite = TrainsSites.new
	end
	def update
		@trainsite = TrainsSites.find(params[:id])
        trainsite.update(trains_site_params)

        redirect_to sites_path
	end
	def destroy
		trainsite = TrainsSites.find(params[:id])
        trainsite.destroy

        redirect_to sites_path(trainsite.site_id)
	end

	private

	def trains_site_params
		params.require(trains_site).permit(:train_id, :site_id)
	end
end
