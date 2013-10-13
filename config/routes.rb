WolfRails::Application.routes.draw do
  resources :users, except: [:index, :edit, :update, :destroy]
  resources :sessions, only: [:new, :create]


  get "logout", to: "sessions#destroy"
  root to: 'user#new'
end
