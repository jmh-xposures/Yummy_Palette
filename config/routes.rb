Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cuisines, only: [:show] do
    resources :restaurants, only: [:create]
  end
  resources :restaurants, only: [:show, :index] do
    resources :upvotes, only: [:create]
    resources :tags, only: [:create]
    resources :reviews, only: [:create]
  end
  resources :users, only: [:show] do 
    resources :follows, only: [:create]
  end
end
