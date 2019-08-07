Rails.application.routes.draw do
  get 'sessions/current_user'
  get 'sessions/login'
  get 'sessions/new'
  get 'sessions/show'
  post 'sessions/create'
  post 'sessions/destroy'
  
  get 'secrets/show'

  
end
