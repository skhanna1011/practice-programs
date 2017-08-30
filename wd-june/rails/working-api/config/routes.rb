Rails.application.routes.draw do
  get 'google/distance'

  get 'gender/search'

  get 'weather/search'

  root 'weather#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
