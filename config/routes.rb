Rails.application.routes.draw do
  resources :models
  # resources :locations

  root 'static_pages#home'

  get  '/about', to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

  get 'travel_calculator', to: 'travel_calculator#index'
  get 'travel_calculator/calculate', to: 'travel_calculator#index' 
  post 'travel_calculator/calculate', to: 'travel_calculator#calculate'
  get 'travel_calculator/location_list', to: 'travel_calculator#location_list'
#  resources :travel_calculator

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
