Rails.application.routes.draw do
  root to: 'top#top'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/image_list', to: 'image_list#index'
  resources :topics, only: [:index, :new, :create, :destroy] do
    resources :posts, only: [:index, :create, :destroy]
  end
end
