Rails.application.routes.draw do


	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'

	root 'users#home'
	get 'users/home', to: 'users#home'

	post '/logout', to: 'sessions#destroy'

	get 'secrets/show', to: 'secrets#show'


end
