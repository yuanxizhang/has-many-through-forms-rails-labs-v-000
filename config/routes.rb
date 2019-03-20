Rails.application.routes.draw do
  resources :posts
  resources :comments
  resources :users
  resources :categories
  root :to => "categories#index"
end
