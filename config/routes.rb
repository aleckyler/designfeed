Rails.application.routes.draw do

  get 'faq/index'

  get 'welcome/index'


  devise_for :users, controllers: { registrations: "registrations", omniauth_callbacks: "omniauth_callbacks" } #,
                    # controllers: {omniauth_callbacks: "omniauth_callbacks"}
  root 'welcome#index'
  resources :submissions do
    member do
      get 'new_submission'

    end
  end
  resources :profiles
  get 'responses', to: 'responses#index'
  post 'responses', to: 'responses#create'
  get 'responses/:id/edit', to: 'responses#edit', as: :edit_response
  get 'response/:id', to: 'responses#show', as: :response
  patch 'response/:id', to: 'responses#update'
  put 'response/:id', to: 'responses#update'
  delete 'response/:id', to: 'responses#destroy'
  resources :uploads

  get 'submissions', to: 'submissions#index', page: 1
  get 'submissions/page/:page', to: 'submissions#index'

  get 'profiles', to: 'profiles#index', page: 1
  get 'profiles/page/:page', to: 'profiles#index'

  get 'submissions/:submission_id/upvote', to: 'votes#upvote', as: :new_upvote
  get 'submissions/:submission_id/downvote', to: 'votes#downvote', as: :new_downvote

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
