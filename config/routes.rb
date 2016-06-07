Rails.application.routes.draw do
  root 'home#index'
  resources :users
  resources :games
  resources :ideas
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'

  resources :users do
    resources :ideas
  end
  resources :users do
    resources :games
  end
  resources :ideas do
    resources :games
  end

end
