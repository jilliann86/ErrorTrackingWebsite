Rails.application.routes.draw do
  resources :user_errors
  resources :errors
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   
  # Defines the root path route ("/")
  root "errors#index"
end
