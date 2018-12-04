Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'songs#index'
  get '/songs', to: 'songs#index'

  resources :songs, only: [:index, :show, :destroy]

end
