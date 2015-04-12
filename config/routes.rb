# == Route Map
#
#                   Prefix Verb   URI Pattern                    Controller#Action
#            documentation        /docs                          Documentation::Engine
#         new_user_session GET    /users/sign_in(.:format)       sessions#new
#             user_session POST   /users/sign_in(.:format)       sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        registrations#cancel
#        user_registration POST   /users(.:format)               registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       registrations#new
#   edit_user_registration GET    /users/edit(.:format)          registrations#edit
#                          PATCH  /users(.:format)               registrations#update
#                          PUT    /users(.:format)               registrations#update
#                          DELETE /users(.:format)               registrations#destroy
#            patient_index GET    /patient(.:format)             patient#index
#                          POST   /patient(.:format)             patient#create
#              new_patient GET    /patient/new(.:format)         patient#new
#             edit_patient GET    /patient/:id/edit(.:format)    patient#edit
#                  patient GET    /patient/:id(.:format)         patient#show
#                          PATCH  /patient/:id(.:format)         patient#update
#                          PUT    /patient/:id(.:format)         patient#update
#                          DELETE /patient/:id(.:format)         patient#destroy
#              staff_index GET    /staff(.:format)               staff#index
#                          POST   /staff(.:format)               staff#create
#                new_staff GET    /staff/new(.:format)           staff#new
#               edit_staff GET    /staff/:id/edit(.:format)      staff#edit
#                    staff GET    /staff/:id(.:format)           staff#show
#                          PATCH  /staff/:id(.:format)           staff#update
#                          PUT    /staff/:id(.:format)           staff#update
#                          DELETE /staff/:id(.:format)           staff#destroy
#                 check_in POST   /check_in(.:format)            check_ins#create
#                      erd        /erd                           Erd::Engine
#
# Routes for Documentation::Engine:
#          new_page GET|POST  /new(/*path)(.:format)         documentation/pages#new
#  page_positioning GET|POST  /positioning(/*path)(.:format) documentation/pages#positioning
#         edit_page GET|PATCH /edit(/*path)(.:format)        documentation/pages#edit
#       delete_page DELETE    /delete(/*path)(.:format)      documentation/pages#destroy
# upload_screenshot GET|POST  /screenshot(.:format)          documentation/pages#screenshot
#            search GET       /search(.:format)              documentation/pages#search
#              page GET       /*path(.:format)               documentation/pages#show
#              root GET       /                              documentation/pages#index
#
# Routes for Erd::Engine:
#         GET  /                  erd/erd#index
#         PUT  /                  erd/erd#update
# migrate PUT  /migrate(.:format) erd/erd#migrate
#    root GET  /                  erd/erd#index
#

Rails.application.routes.draw do
  mount Documentation::Engine => "/docs"
  devise_for :users, :controllers => { :registrations => "registrations", :sessions => "sessions"}

    resources :patient do
      get 'staff/:id/department', to: 'patient#visit_department', as: :visit_department
      member do
        get 'timeline'
      end
    end

    # resources :staff do
    #   member do
    #     get 'department'
    #   end
    # end
    
    resources :staff

  

  post 'check_in', to: 'check_ins#create', as: :check_in
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

