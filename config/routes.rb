Rails.application.routes.draw do
  resources :reports
  resources :raccoon_parties
  resources :comments
  resources :neighborhoods
  resources :locations
  resources :users
  resources :sessions
  resource :welcome, only: :show
  resources :raccoons do 
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
