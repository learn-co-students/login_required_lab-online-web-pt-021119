Rails.application.routes.draw do
  root 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/welcome', to: 'sessions#welcome'
  get '/show', to: 'secrets#show'
  resources :secrets, only: [:show]
end
