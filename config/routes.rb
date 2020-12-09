Rails.application.routes.draw do

  root 'static_pages#home'

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  resources :users, :except => [:new, :destroy]
  # patch '/users/:id/password', to: 'users#password', as: 'password'
  # post 'users/(/:id)/password', to: 'users#password', as: 'password'

  resources :houses, :except => [:show]

  resources :armies, :except => [:show] do
    collection do
      put 'update_multiple'
      put 'destroy_multiple'
      post 'edit_multiple'
      post 'import'
    end
  end
  get '/armies/:id/notes', to: 'armies#notes', as: 'army_note'
  get '/armies/:id/confirm', to: 'armies#confirm', as: 'army_confirm'

  # Login and logout routes
  get 'sso', to: 'sessions#sso', as: 'sso'

  post 'login', to: 'sessions#create', as: 'login'
  post 'logout', to: 'sessions#destroy', as: 'logout'
  get 'logout_sso', to: 'sessions#destroy_sso', as: 'logout_sso'

  resources :locations

  get  '/about', to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

  get '/map', to: 'map#index'

  # get 'missions/', to: 'missions#index'
  # post 'missions/calculate', to: 'missions#calculate'
  # get 'missions/recipe', to: 'missions#recipe'

  get 'rep', to: 'reputations#index'
  post 'rep/change', to: 'reputations#change'

  get 'travel_calculator', to: 'travel_calculator#index'
  post 'travel_calculator/calculate', to: 'travel_calculator#calculate'
  # get 'travel_calculator/location_list', to: 'travel_calculator#location_list'

  # Render JSON lists for autocomplete

  get 'location_list', to: 'application#location_list'
  get 'location_list_en', to: 'application#location_list_en'
  get 'family_list', to: 'application#family_list'

  # Games and Tools

  get 'game', to: 'game#index'
  post 'game', to: 'game#set_active_game', as: 'set_active_game'

  resources :tools, :only => [:edit, :update]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
