class SessionController < ApplicationController
	def create
		user = User.from_omniauth(env['omniauth.auth'])
		session[:user_id] = user.id
		redirect_to domov_path
	end

	def destroy
		session[:user_id] = nil
		redirect_to domov_path
	end
end