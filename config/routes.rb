Rails.application.routes.draw do
  resources :tasks
  resources :consultants
  get 'consultants/search' => 'consultants#search', :via => :get, :as => 'search_consultants'
  get 'consultants/:id' => 'consultants#destroy', :via => :delete
  get 'consultants/:id' => 'consultants#update', :via => :put
  get 'consultants/:id/edit' =>'consultants#edit', :via => :get, :as => 'editing_consultant'

  resources :departments
  get 'departments/:id' => 'departments#destroy', :via => :delete
  get 'departments/:id' => 'departments#update', :via => :put
  get 'departments/:id/edit' =>'departments#edit', :via => :get, :as => 'editing_department'

  
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  get 'page/index'
 root 'page#index'
  get 'users/:id' => 'users#destroy', :via => :delete

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
