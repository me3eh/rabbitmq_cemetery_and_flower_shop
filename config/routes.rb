Rails.application.routes.draw do
  # get 'home/index'
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :documentation, only: [:index]
  mount Cementery2n::Root => '/'

  # Defines the root path route ("/")
end
