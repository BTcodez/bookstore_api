Rails.application.routes.draw do
  resources :authors, only: [:index, :show, :create, :update, :destroy]
  resources :books, only: [:index, :show, :create, :update, :destroy]
  get 'author/index'
  get 'author/show'
  get 'author/create'
  get 'author/update'
  get 'author/destroy'
  get 'book/index'
  get 'book/show'
  get 'book/create'
  get 'book/update'
  get 'book/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end