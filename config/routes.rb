Rails.application.routes.draw do
  get 'welcome/index'

  get 'users/show'

  devise_for :users
root to: "welcome#index"
end
