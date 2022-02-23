Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
  end
	resources :pets do
  end
  resources :bookings, only: [:new, :create, :destroy]

  # get '/bookings/new', to: 'bookings#new'
  # post '/bookings', to: 'bookings#create'

  # get '/bookings', to: 'bookings#show'

  get '/profile', to: 'users#show'


end
