Rails.application.routes.draw do
  devise_for :users
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "pools#index"
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  get "/mybookings", to: "pages#mybookings"

  resources :users, only: [:show]
  resources :pools, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create]
    resources :saved_pools, only: [:create, :destroy]
  end
  patch '/bookings/:id/accept', to: 'bookings#accept', as: :accept_booking
  patch '/bookings/:id/decline', to: 'bookings#decline', as: :decline_booking
  patch '/bookings/:id/cancel', to: 'bookings#cancel', as: :cancel_booking

  resources :saved_pools, only: [:index]
  resources :bookings, only: [:show]
  # Defines the root path route ("/")
  # root "posts#index"
end
