Rails.application.routes.draw do
  resources :reports
  resources :raccoon_parties
  resources :comments
  resources :neighborhoods
  resources :locations
  resources :users
  resources :sessions
  get '/login', to: 'sessions#new'
  resource :welcome, only: :show
  resources :raccoons do 
    resources :comments
  end
  get '/raccoons/:id/track', to: 'raccoons#track'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
