Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :patrons
  resources :restaurants
  namespace :api do
    namespace :v1 do
      resources :items
      resources :sections
      resources :menus
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
