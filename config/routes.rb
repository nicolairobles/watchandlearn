Rails.application.routes.draw do
  devise_for :users
  root 'topics#index'
  
  resources :subscriptions
  resources :votes
  resources :videos
  resources :curriculums
  resources :topics
  resources :users

 end
