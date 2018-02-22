Rails.application.routes.draw do
  get 'site/index'

  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :customers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
