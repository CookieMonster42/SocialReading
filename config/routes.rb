Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :groups, only: [:show] do
    resources :comments, only: :create
  end
end
