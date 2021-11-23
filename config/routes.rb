Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :toothbrushes, only: [:new, :create]
end
