Rails.application.routes.draw do

  apipie
  resources :users
  resources :medicines, only: [:index, :show]
  resources :orders, only: [:create, :show]

  resource :cart, only: [:show] do
    put    :add_item
    delete :remove_item
  end
  
  root 'show#index'

  get '/register' => 'users#new'
  post '/users' => 'users#create'

  get '/sign' => 'sessions#new'
  post '/sign' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
