Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :restaurants do
        resources :menus do
          resources :sections do
            resources :items
          end
        end
        resources :orders 
      end

      resources :patrons do
       resources :orders 
      end
      
      resources :items do
        resources :order_items
      end
      
      resources :orders do
        resources :order_items        
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
