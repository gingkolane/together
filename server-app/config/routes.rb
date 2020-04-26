Rails.application.routes.draw do
  resources :tests
  resources :notifications
  resources :casereports
  resources :connections
  resources :people
  resources :users
  resources :locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
