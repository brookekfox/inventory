class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
		@user = current_user
	end

	def create
		@user = User.create(params.require(:user).permit(:name, :email, :password, :password_confirmation))
		if @user.save
			redirect_to new_session_path
		else
			render 'new'
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

	# def current_user
	# 	return unless session[:user_id]
	# 	@current_user ||= User.find(session[:user_id])
	# end

end
