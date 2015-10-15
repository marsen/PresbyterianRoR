Rails.application.routes.draw do
root :to=>"page#index"
resources :news
resources :witness
resources :about do
    collection do      
      get :history
      resources :members do
        collection do        
          get :pastor
          get :secretary
          get :officer
        end
      end
      resources :groups do
          collection do
            get :sunday_workship
            get :qt        
            get :family
            get :matins
            get :elder
            get :women
            get :married          
            get :youth
            get :young
            get :awana
            get :choir
            get :workship
        end
      end
    end
end
resources :admin do
  collection do
    post :login
    post :logout
    get :logout
  end
end
resources :goal do
  collection do
    get :ministry
    get :annual
    get :next
    get :midRange
  end
end
resources :location do
  collection do     
    get :b1
    get :floor1
    get :floor2
    get :floor4
    get :floor5
  end
end
 #get "/about/floorplan" => "about#floorplan"
 #get "/mission" => "page#mission"
 get "/qa" => "page#qa"
 get "/schedule" => "page#schedule"
 get "/contact" => "page#contact"
 #get "welcome/say_hello" => "welcome#say"
 #
 post "uploader/image"=> "uploader#image"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
