class SessionsController < ApplicationController

	def new
		@user = User.new #the new session form is based on a user
	end
	def create
		#find the user by their email
		user = User.where(email: params[:user][:email]).first
		if user != nil && user.authenticate(params[:user][:password])
			# def current_user
			# 	return unless session['user_id']
			# 	@current_user = User.find(session['user_id'])
			# end
			session['user_id'] = user.id.to_s #Session is built-in to Rails; it's like a cookie
			@current_user = User.find(session['user_id'])
			# redirect_to controller: 'users', something: session['user_id']
			redirect_to user_path(session['user_id'])
		end
	end
	def destroy
		session.clear
	end
end
