Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show]

  resources :groups, only: [:index, :create]

  resources :memberships, only: [:create, :destroy]

  resources :groups, only: [:show] do
    resources :comments, only: :create
  end

  resources :comments, only: :destroy

end
