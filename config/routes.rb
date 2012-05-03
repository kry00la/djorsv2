Djors::Application.routes.draw do





  

  resources :image_slides

  resources :function_room_schemas

  resources :content_mini_intro_us

  resources :content_intro_us

  resources :content_about_us

  resources :book_reservations

  resources :package_menus

  resources :package_categories

  resources :function_room_images

  resources :recipe_images

  resources :services

   resources :reservations do

     resources :pages do
        collection do
          get :functionroomlist
          get :packagelist
          get :package
          get :menu_add_on   
          get :recipe_alone       
        end
     end
        resources :reservation_packages 
          resources :reservation_package_pages do
            collection do
               get :menulist 
               get :menu
               get :function_alone
            end
          end
        resources :package_line_items
        resources :menu_addons_line_items
        resources :reservation_function_rooms        
    end
  
 
  #resources :reservation_packages do
  #   resources :reservation_package_pages do
  #     collection do
  #           get :menulist
  #     end
  #   end
  #   resources :package_line_items
  # end
  
  resources :packages do
    resources :package_crews
  end

  resources :function_rooms
  resources :crews
  resources :menu_categories
  resources :menus do
     resources :menu_recipes
   end

  resources :recipe_categories
  resources :recipes
  
  

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
   get 'public/contactus' 
   get 'public/aboutus'
   get 'public/recipes'
   get 'public/functionrooms'
   get 'public/functionalone_publics'
   get 'public/package_publics'
  root :to => "public#index", :as  => 'public'
    #root :to => 'reservations', :as =>'store'
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
