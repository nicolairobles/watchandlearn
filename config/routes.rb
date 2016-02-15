Rails.application.routes.draw do
  root 'topics#index'
  
  resources :subscriptions
  resources :votes
  resources :videos
  resources :curriculums
  resources :topics
  resources :users
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :account_activations, only: [:edit]

 end
