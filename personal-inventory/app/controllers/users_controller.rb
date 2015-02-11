class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(params.require(:user).permit(:name, :email, :hashed_password))
		if @user.save
			redirect_to users_path
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user = User.update_attributes(params.require(:user).permit(:name, :email, :hashed_password))
			redirect_to users_path
		else
			render 'edit'
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

end
