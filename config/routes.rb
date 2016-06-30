Rails.application.routes.draw do
  root to: 'static_pages#home'
  get    'signup', to: 'users#new'
  get    'edit'  , to: 'users#edit'
  get    'show'  , to: 'users#show'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :users
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy, :show, :edit, :update]
  resources :users, only: [:edit] do
    collection do
      patch 'update_password'
    end
  end
end
