Rails.application.routes.draw do

  get 'ratings/show'

  resources :labels, only: [:show]

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do

    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'
  root to: 'welcome#index'


end
