Rails.application.routes.draw do
  get 'example/input'
  post 'example/show'
  get 'log/sign_in'
  get 'log/sign_out'
  get 'users/new'
  post 'log/log'
  root 'homepage#index'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
