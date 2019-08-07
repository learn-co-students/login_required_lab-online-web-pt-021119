class SecretsController < ApplicationController
  before_action :require_login

  def show
    if session[:name].nil? || session[:name].empty?
      redirect_to '/'
    elsif session[:name] == params[:name]
      render 'show'
    end
  end

  private

  def require_login
    redirect_to "/login" unless current_user == session[:name]
  end

end
