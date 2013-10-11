WolfRails::Application.routes.draw do
  resources :users, except: [:index, :edit, :update, :destroy]
end
