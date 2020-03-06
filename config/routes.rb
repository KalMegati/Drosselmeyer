Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :writers

  resources :settings

  resources :sessions, only: [:new, :create]

  resources :characters

  get '/signup', to: 'writers#new'

  get '/signin', to: 'sessions#new'

  get '/signout', to: 'sessions#signout'

  root to: 'application#welcome'

end
