Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'songs#index'

  resources :artists, shallow: true, only: [:new, :create, :show] do
    resources :songs, only: [:index, :show, :destroy, :new, :create]
  end
  resources :songs, only: [:index]
  resources :playlists, only: [:new, :create, :show]
  resources :users, only: [:new, :create, :show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  namespace :admin do
    resources :categories, only: [:index]
  end
end
