Rails.application.routes.draw do
  root 'home#index'
  resources :users, only: [:show, :new, :create, :edit, :destroy]
  resources :games
  resources :ideas
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  get 'home/about'
  get '/ideas/:id/like', to: 'ideas#like', as: 'like_idea'

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
