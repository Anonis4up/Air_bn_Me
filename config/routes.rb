Rails.application.routes.draw do
  get 'pages/index'
  get 'reservations/create'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :bikes, only: [:index, :show, :new, :create, :destroy] do
    resources :reservations, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :reservations, only: [:index, :destroy]

  root to: "pages#home"
  # Defines the root path route ("/")
  # root "posts#index"
end
