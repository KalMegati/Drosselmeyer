Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :writers

  resources :settings do
    resources :characters
    resources :factions
  end

  resources :sessions, only: [:new, :create]

  get '/signup', to: 'writers#new'

  get '/signin', to: 'sessions#new'

  get '/signout', to: 'sessions#signout'

  root to: 'application#welcome'

end
