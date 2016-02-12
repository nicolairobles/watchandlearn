Rails.application.routes.draw do
  devise_for :users
  root 'topics#index'
  
  resources :subscriptions
  resources :votes
  resources :videos
  resources :curriculums
  resources :topics
  resources :users
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

 end
