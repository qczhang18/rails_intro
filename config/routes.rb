Rails.application.routes.draw do
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  resources :sessions, only: [:new, :create, :destroy]
  get '/login' => "sessions#new"
  get '/logout' => "sessions#destroy"

  get '/search' => "home#search"

  # get '/' => "home#index"
  root 'home#index'
end
