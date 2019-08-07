class SessionsController < ApplicationController

  def new

  end

  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to '/'
    else
      redirect_to '/user'
    end
  end

  def destroy
    if !session[:name].nil?
      session[:name] = nil
      redirect_to '/'
    end
  end

end
