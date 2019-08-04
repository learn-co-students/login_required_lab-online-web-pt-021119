Rails.application.routes.draw do

  root 'secrets#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/show', to: 'secrets#show'

end