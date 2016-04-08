Rails.application.routes.draw do
  root 'artists#index'
  resources :artists, only: [:index, :new, :create, :show]
end
