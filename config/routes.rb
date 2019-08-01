Rails.application.routes.draw do
  root "sessions#login"
  get 'sessions/index'
  get 'sessions/new'
  get 'sessions/login'
  post 'sessions/create'

  get 'sessions/destroy'
  get 'secrets/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
