Rails.application.routes.draw do
  resources :publications
  resources :instructors
  resources :students
  resources :courses

  root "students#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
