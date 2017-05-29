Rails.application.routes.draw do

  root to: 'subs#index'
  resources :users
  resource :session
  resources :subs
  resources :posts do
    get 'comments/new'
  end
  resource :comment, only: [:create]
end
