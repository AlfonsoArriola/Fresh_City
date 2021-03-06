class TrainsController < ApplicationController
	def index
		@trains = Train.all
	end
	def create
		@train = Train.create(train_params)
		 if @train.valid?
		 	flash[:notice] = "Success! added a NEW train"
		 	redirect_to trains_path
		 else
		 	flash[:notice] = "Invalid Input"
		 	render :new
		 end

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
		Train.destroy(params[:id])

		redirect_to trains_path	
	end
	private
	def train_params
		params.require(:train).permit(:name, :site_id)
	end
end
