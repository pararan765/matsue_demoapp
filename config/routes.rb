Rails.application.routes.draw do
  devise_for :users
  root to: 'matsues#index'
  resources :matsues, only: [:index, :new, :create, :show]
  resources :foods, only: [:index]
  resources :history, only: [:index]
  resources :spa, only: [:index]
  resources :nature, only: [:index]
end
