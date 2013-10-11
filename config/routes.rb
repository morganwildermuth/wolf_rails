WolfRails::Application.routes.draw do
  resources :users, except: [:index, :edit, :update, :destroy]
  resources :sessions, except: [:index, :edit, :update]

  root to: 'sessions#new'
end
