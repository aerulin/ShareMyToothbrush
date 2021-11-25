Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users, only: [:show]
  resources :toothbrushes, only: [:new, :create, :index, :show, :edit, :update] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :destroy, :validate] do
      collection do
        get 'validate'
        get 'decline'
      end
    end
end
