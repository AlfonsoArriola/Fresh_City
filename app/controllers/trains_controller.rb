class TrainsController < ApplicationController
	def index
		@trains = Train.all
	end
	def create
		@train = Train.create(train_params)
	end
	def new
		@train = Train.new
	end
	def edit
		@train = Train.find(params[:id])
	end
	def show
		@train = Train.find(params[:id])		
	end
	def update
		train = Train.find(params[:id])
		train.update(train_params)

		redirect_to trains_path
	end
	def destroy
		
	end
	private
	def train_params
		params.require(:train).permit(:name, :site_id)
	end
end
