Rails.application.routes.draw do
  resources :media
  resources :achievements
  resources :evidences
  resources :reviews
  resources :users
  resources :promises
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
