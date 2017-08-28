Rails.application.routes.draw do
  resources :articles
  resources :categories
  resources :roles
  devise_for :users
  get 'site/index'
  root to: "site#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
