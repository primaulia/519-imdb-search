Rails.application.routes.draw do
  root to: 'pages#home'
  resources :movies, only: :index
  resources :tv_shows, only: :index
end