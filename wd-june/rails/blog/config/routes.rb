Rails.application.routes.draw do
  get 'users/index'

  resources :articles
  resources :categories
  resources :roles
  devise_for :users
  get 'site/index'
  root to: "site#index"
  scope "/admin" do
    resources :users
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
