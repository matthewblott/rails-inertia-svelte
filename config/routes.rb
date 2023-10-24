Rails.application.routes.draw do
  devise_for :users

  resources :people, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  get '/about', to: 'home#about'

  root 'home#index'

  # Errors
  match "/402", to: "errors#forbidden", via: :all
  match "/404", to: "errors#not_found", via: :all
  # match "/422", to: "errors#internal_server_error", via: :all
  match "/500", to: "errors#internal_server_error", via: :all

end
