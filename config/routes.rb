Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :writers do
    resources :characters
  end

  resources :settings do
    resources :characters
    resources :factions
    resources :locations
  end

  resources :sessions, only: [:new, :create]

  get '/signup', to: 'writers#new'

  get '/signin', to: 'sessions#new'

  post '/signin', to: 'sessions#create'

  get '/signout', to: 'sessions#signout'

  root to: 'application#welcome'

  post '/auth/:provider/callback', to: 'sessions#create'

  get '/auth/:provider/callback', to: 'sessions#create'

  get '/hacker' => 'application#hacker', as: :hacker

  get '/faker' => 'application#faker', as: :faker  

end
