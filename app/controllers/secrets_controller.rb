class SecretsController < ApplicationController
	before_action :check_user

	def show

	end

	def check_user
		redirect_to login_path unless session.include? :name
	end

end
