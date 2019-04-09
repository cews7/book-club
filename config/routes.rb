Rails.application.routes.draw do
  root 'home#index'

  get 'books', to: 'books#index'
end
