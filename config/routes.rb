Rails.application.routes.draw do
  resources :subscriptions
  resources :votes
  resources :videos
  resources :curriculums
  resources :topics
  resources :users
  root 'home#index'

  resources :subscriptions
  resources :votes
  resources :videos
  resources :curriculums
  resources :topics
  resources :users
 end
