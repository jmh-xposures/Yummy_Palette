Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cuisines, only: [:index, :show] do
    resources :restaurants, only: [:create]
  end

  resources :restaurants, only: [:show, :index] do
    resources :upvotes, only: [:create, :destroy]
    resources :tags, only: [:create, :destroy]
    resources :reviews, only: [:create, :destroy]
  end

  resources :users, only: [:show] do 
    resources :follows, only: [:create]
  end

  resources :dishes, only: [:create]
end
