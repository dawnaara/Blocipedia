Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show]

  resources :wikis do 
  	resources :collaborators
  end

  resources :charges, only: [:new, :create]

  get "downgrade", to: "charges#downgrade", as: "downgrade"

  root 'welcome#index'
end
