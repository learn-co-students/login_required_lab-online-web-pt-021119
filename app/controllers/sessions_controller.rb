class SessionsController < ApplicationController

	def create
		if params[:name] && !params[:name].empty?
			session[:name] = params[:name]
			redirect_to users_home_path
		else
			redirect_to login_path
		end
	end

	def destroy
		session.destroy
	end

end