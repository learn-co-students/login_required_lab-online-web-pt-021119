class SecretsController < ApplicationController

  before_action :current_user

  def show
    if !session[:name] || session[:name].empty?
      redirect_to(controller: 'sessions', action: 'new')
    end
  end

end
