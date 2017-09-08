Rails.application.routes.draw do
  devise_for :users
  get 'dashboard/index'

  get 'google/distance'

  get 'google/geocoding'

  get 'gender/search'

  get 'weather/search'

  root 'weather#search'

  namespace :api, format: 'json' do 
    namespace :v1 do
      resources :categories
      resources :products
    end
    namespace :v2 do
      resources :tasks
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
