class SessionsController < ApplicationController
  def index
    if current_user
      @user = current_user
    else
      redirect_to sessions_new_path
    end
  end

  def new
  end

  def create
    if params[:name].present? && !params[:name].nil?
      session[:name] = params[:name]
      redirect_to sessions_index_path
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    if session[:name]
      session.delete :name
      redirect_to root_path
    end
  end

end
