Plebe::Application.routes.draw do
  

  resources :users   # get "users/new"
  resources :sessions, :only => [:new, :create, :destroy]

  # this statement is the original but will try to have a coming soon page
  root :to => 'pages#home'
  # root :to => 'pages#comingsoon'
  
  match '/help',        :to => 'pages#help'
  match '/profile',     :to => 'pages#profile'
  match '/signout',     :to => 'pages#signout'
  match '/about',       :to => 'pages#about'
  match '/support',     :to => 'pages#support'
  match '/developers',  :to => 'pages#developers'
  match '/signup',      :to => 'users#new'
  # match '/home', :to => 'pages#home'
  match '/comingsoon',  :to => 'pages#comingsoon'
  match '/signin',      :to => 'sessions#new'
  match '/signout',     :to => 'sessions#destroy'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
