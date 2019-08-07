Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'secrets#show'
  get '/login' => 'sessions#new'
  get '/login' => 'session#show'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/show' => 'secret#show'

end
