Rails.application.routes.draw do
  root to: 'matsues#index'
  resources :matsues, only: [:index]
end
