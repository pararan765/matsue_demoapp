Rails.application.routes.draw do
  devise_for :users
  root to: 'matsues#index'
  resources :matsues, only: [:index, :new, :create]
end
