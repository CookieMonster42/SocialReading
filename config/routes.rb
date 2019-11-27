Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show]

  resources :groups, only: [:index]

  resources :memberships, only: [:create]

  resources :groups, only: [:show] do
    resources :comments, only: :create
  end

end
