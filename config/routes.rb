Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :toothbrushes, only: [:new, :create, :index, :show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :destroy, :validate] do
      collection do
        get 'validate'
        get 'decline'
      end
    end
end
