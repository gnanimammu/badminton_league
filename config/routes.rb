Rails.application.routes.draw do
  devise_for :users
  root "players#index"
  resources :players, only: [:index, :new, :create, :destroy]
  resources :matches, only: [:index, :new, :create]
  get "leaderboard", to: "players#leaderboard"
  
end