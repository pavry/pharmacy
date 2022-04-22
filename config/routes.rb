Rails.application.routes.draw do
  resources :users
  root 'show#index'
end
