class UsersController < ApplicationController

	def home
		redirect_to login_path unless current_user
		@username = current_user
	end

end