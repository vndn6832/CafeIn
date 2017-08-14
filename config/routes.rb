Rails.application.routes.draw do
  devise_for :users
  resources :posts, :products, :orders
  root 'shops#index'
  get 'shops/select_shop' => 'shops#select_shop'
  get '/show_product/:id' => 'shops#show_product', as: "show_product"
  get '/pay/:id' => 'shops#pay'
  get '/show_product/:shop_id/comments/create' => 'comments#create'
  post '/show_product/:shop_id/comments/destroy' => 'comments#destroy'
  get 'show_product/favorites/index/:shop_id' => 'favorites#index', as: "favorite"
  get 'favorites/show_favorite' => 'favorites#show_favorite', as: "show_favorite"
  get 'show_product/favorites/destroy/:shop_id' => 'favorites#destroy'
  get 'products/index' => 'products#index'
  
  # get 'shops/near_shop' => 'shops#near_shop'
  get  '/near_shop' => 'shopw#near_shop'
  post '/write'=> 'shops#write'
  
  post '/' => 'shops#index'
  get "/location" => "shops#location"
  post 'shops/near_shop'
  
  get 'carts/:id' => "carts#show", as: "cart"
  delete 'carts/:id' => "carts#destroy"
  
  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"
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
