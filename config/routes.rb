Rails.application.routes.draw do
  devise_for :users

  resources :people, only: [:index, :show, :new, :create]

  get '/about', to: 'home#about'

  root 'home#index'
end
