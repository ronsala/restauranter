# TODO: Simplify routes.
Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do
  #     resources :menus

  #     resources :restaurants do
  #       resources :menus do
  #         resources :sections do
  #           resources :items
  #         end
  #       end
  #       resources :orders 
  #     end

  #     resources :users do
  #       resources :restaurants 
  #     end
      
  #     resources :orders do
  #       resources :items
  #     end

  #     post 'login', to: 'users#login'
  #   end
  # end
  namespace :api do
    namespace :v1 do
      resources :items, only: %i[ create update destroy ]
      resources :menus
      resources :sections, only: %i[ create update destroy ]

      resources :restaurants do
        resources :menus do
          resources :sections do
            resources :items
          end
        end
        resources :orders 
      end

      resources :users do
        resources :restaurants 
      end
      
      resources :orders do
        resources :order_items, only %i[ index show ]
      end

      resources :order_items, only %i[ create ]

      post 'login', to: 'users#login'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
