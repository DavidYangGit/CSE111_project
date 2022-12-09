Rails.application.routes.draw do
  resources :showgenres
  resources :showactors
  resources :movieactors
  resources :moviegenres
  resources :genres
  resources :actors
  devise_for :users
  resources :shows
  resources :movies
  get 'home/index'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
