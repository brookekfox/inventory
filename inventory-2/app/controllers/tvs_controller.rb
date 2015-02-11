class TvsController < ApplicationController
	def index
		@tvs = Tv.all
	end

	def new
		@tv = Tv.new
	end

	def create
		@tv = Tv.create(params.require(:tv).permit(:title, :season, :year, :show_runner, :network, :format, :loaned_out))
		if @tv.save
			redirect_to tvs_path
		else
			render 'new'
		end
	end

	def edit
		@tv = Tv.find(params[:id])
	end

	def update
		@tv = Tv.find(params[:id])
		if @tv = Tv.update_attributes(params.require(:tv).permit(:title, :season, :year, :show_runner, :network, :format, :loaned_out))
			redirect_to tvs_path
		else
			render 'edit'
		end
	end

	def show
		@tv = Tv.find(params[:id])
	end

	def destroy
		@tv = Tv.find(params[:id])
		@tv.destroy
		redirect_to tvs_path
	end
end
