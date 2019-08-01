class SecretsController < ApplicationController

  def show
    if current_user
      @user = session[:name]
    else
      redirect_to sessions_new_path
    end
  end


end
