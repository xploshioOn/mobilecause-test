Rails.application.routes.draw do
  root "notes#index"
  resources :notes, only: [:create, :index]
  resources :users, only: [:create]
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :account_activations, only: [:edit]
end
