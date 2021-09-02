Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/artists', to: 'pages#artists', as: 'artists'

  resources :albums
end
