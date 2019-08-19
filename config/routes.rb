Rails.application.routes.draw do
  resources :reports
  resources :raccoon_parties
  resources :comments
  resources :neighborhoods
  resources :locations
  resources :users
  post '/logout', to: 'sessions#destroy'
  post '/logout/:id', to: 'sessions#destroy'
  resources :sessions
  get '/login', to: 'sessions#new'

  resource :welcome, only: :show
  resources :raccoons do 
    resources :comments
  end
  get '/raccoons/:id/track', to: 'raccoons#track', as: 'track_raccoon'
  resource :analytics, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
