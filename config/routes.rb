OauthProvider::Application.routes.draw do
  get "data/index"
  resources :oauth_clients
  match '/oauth/test_request',  :to => 'oauth#test_request',  :as => :test_request, via: [:get, :post]
  match '/oauth/token',         :to => 'oauth#token',         :as => :token, via: [:get, :post]
  match '/oauth/access_token',  :to => 'oauth#access_token',  :as => :access_token, via: [:get, :post]
  match '/oauth/request_token', :to => 'oauth#request_token', :as => :request_token, via: [:get, :post]
  match '/oauth/authorize',     :to => 'oauth#authorize',     :as => :authorize, via: [:get, :post]
  match '/oauth',               :to => 'oauth#index',         :as => :oauth, via: [:get, :post]
  get "welcome/index"
  post 'oauth/revoke'
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'oauth_clients#index'

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
