Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'my_pets', to: 'pets#my_pets', as: :my_pets

  resources :my_pets, only: [:show] do
    resources :bookings, only: [:index, :show]
  end
  resources :bookings, only: [:show, :index, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :bookings
  end
  resources :pets do
    resources :bookings
  end

  get '/profile', to: 'users#show'

  # get '/bookings/new', to: 'bookings#new', as: :new_booking
  # post '/bookings', to: 'bookings#create'
  # get '/bookings/:id', to: 'bookings#show', as: :booking
  # get '/bookings', to: 'bookings#index'
  # get '/bookings/:id/edit', to: 'bookings#edit'
  # patch '/bookings/:id', to: 'bookings#update'
  # delete '/bookings/:id', to: 'bookings#destroy'


  # get '/users/new', to: 'users#new', as: :new_user
  # post '/users', to: 'users#create'
  # get '/users/:id', to: 'users#show', as: :user
  # get '/users', to: 'users#index'
  # get '/users/:id/edit', to: 'users#edit'
  # patch '/users/:id', to: 'users#update'
  # delete '/users/:id', to: 'users#destroy'

  # get '/pets/new', to: 'pets#new', as: :new_pet
  # post '/pets', to: 'pets#create'
  # get '/pets/:id', to: 'pets#show', as: :pet
  # get '/pets', to: 'pets#index'
  # get '/pets/:id/edit', to: 'pets#edit'
  # patch '/pets/:id', to: 'pets#update'
  # delete '/pets/:id', to: 'pets#destroy'

end
