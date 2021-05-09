Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :items
      resources :sections
      resources :menus
      resources :order_items
      resources :orders
      resources :patrons
      resources :restaurants
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
