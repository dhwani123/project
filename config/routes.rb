Project::Application.routes.draw do
  
  resources :feedbacks

  get "cubestudents/index"
  get "cubestudents/show"
  resources :assignments, only: [:index, :new, :create, :destroy]
  get "assignments/index"
  get "assignments/new"
  get "assignments/create"
  get "assignments/destroy"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
 resources :subjects

resources :posts do
  resources :comments do
    member do
      get "like", to: "comments#upvote"
      get "dislike", to: "comments#downvote"
    end
  end
end


 get 'tags/:tag', to: 'posts#index', as: :tag

  resources :posts do
   resources :comments, :only => [:create]
  end

  resources :posts do
    member { get :vote }
  end


  get "teacherregs/new"
  get "teacherregs/create"
  get "teacherregs/show"
  get "teacherregs/index"
  get "teacherregs/edit"
  get "teacherregs/update"
  get "teacherregs/destroy"
  get "posts/create"
  get "posts/destroy"
  get "posts/new"
  get "posts/index"
  get "posts/show"
  get "posts/edit"
  get "posts/update"
  get "studentregs/new"
  get "studentregs/create"
  get "studentregs/show"
  get "studentregs/index"
  get "studentregs/edit"
  get "studentregs/update"
  get "studentregs/destroy"
  devise_for :cubeprincipals
  devise_for :cubestudents, controllers: { registrations: 'cubestudents/registrations' }
  devise_for :cubeteachers
 

 get "home", :to => "pages#home" 
  get "about" ,:to => "pages#about" 
  get "help" ,:to => "pages#help" 
  get "contactus", :to => "pages#contactus" 

  resources :studentregs
 
  root to: 'pages#home'
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
