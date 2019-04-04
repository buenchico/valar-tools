Rails.application.routes.draw do

  root 'static_pages#home'
  
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  
  # resources :users
  # resources :sessions, only: [:new, :create, :destroy]
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # resources :locations

  get  '/about', to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

  # get 'missions/', to: 'missions#index'
  # post 'missions/calculate', to: 'missions#calculate'
  # get 'missions/recipe', to: 'missions#recipe'

  get 'travel_calculator', to: 'travel_calculator#index'
  post 'travel_calculator/calculate', to: 'travel_calculator#calculate'
  get 'travel_calculator/location_list', to: 'travel_calculator#location_list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end