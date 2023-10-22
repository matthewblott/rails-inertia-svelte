Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  # resources :people
  resources :people, only: [:index, :show]
  # get '/people', to: 'people#index'
end
