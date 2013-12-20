WolfRails::Application.routes.draw do
  resources :users, except: [:index, :edit, :update, :destroy]
  resources :sessions, only: [:new, :create]
  resources :wolves
  resources :games
  resources :locations


  get "logout", to: "sessions#destroy"
  root to: 'users#new'
end
