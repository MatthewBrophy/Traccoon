Rails.application.routes.draw do
  resources :reports
  resources :raccoon_parties
  resources :comments
  resources :neighborhoods
  resources :locations
  resources :raccoons
  resources :users
  resources :sessions
  resources :welcome, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
