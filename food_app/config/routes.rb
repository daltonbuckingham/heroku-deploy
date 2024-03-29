Rails.application.routes.draw do
  

  # resources :users

  resource :session, only: [:new, :create, :destroy]

  resources :recipes

  resources :users

  resources :welcomes

  resources :mains

  resources :ingredients
  # get    'recipes/' =>          'recipes#index',    as: :recipes
  # get    'recipes/:id' =>       'recipes#show',     as: :recipe

  # get    'recipes/:id' =>       'recipes#show',     as: :recipe

  # TODO: create an api for angularjs to access recipes via ingredients selection

get 'verified', to: 'sessions#new'

  # get 'users/index' => 'users#index', as: :users
  # post 'users/index' => 'users#index'
  # get 'users/new' => 'users#new', as: :new_user
  # post 'users/' => 'users#create'
  # get 'users/:id' => 'users#show', as: :user
  # get 'users/:id/edit' => 'users#edit', as: :edit_user
  # put 'users/:id' => 'users#update'
  # patch 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'


  # get 'recipes' => 'users#index'
  post 'recipes' => 'recipes#create'
  get 'recipes/new' => 'recipes#new'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcomes#index'

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
