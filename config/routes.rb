Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :topics, except: :show do
    resources :posts, only: [:index, :create, :destroy]
  end
end
