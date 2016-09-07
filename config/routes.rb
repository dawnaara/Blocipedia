Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show]

  resources :wikis
  
  root 'welcome#index'
end
