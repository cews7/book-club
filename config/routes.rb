Rails.application.routes.draw do
  root 'home#index'

  resources :books, only: [:show, :index]
end
