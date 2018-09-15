Rails.application.routes.draw do
  root 'front#index'
  
  get 'apply_content/create'

  devise_for :users
  # club_member를 전체를 보여주는 라우트
  get 'club/club_members'
  
  # club_member를 삭제하는 라우트
  get 'club/delete_club_member/:club_member_id' => 'club#delete_club_member'
  
  # club을 수정하는 라우트
  get 'club/edit_club/:club_id' => 'club#edit_club'
  
  post 'club/update_club/:club_id' => 'club#update_club'
  
  # club을 삭제하는 라우트
  get 'club/delete_club/:club_id' => 'club#delete_club'
  
  # club을 새로 만드는 라우트
  get 'club/new_club'
  
  post 'club/create_club'
  
  ##############################
  
  get 'club/index'
  
  get 'club/club_view/:club_id' => 'club#club_view'
  
  ###################################
  
  ## 지원양식 관련 routes ##
  # 지원양식목록 및 테스트 페이지
  get 'apply_form/index'

  # 지원양식 생성
  get 'apply_form/new'  
  post 'apply_form/create/:user_id' => 'apply_form#create'
  
  # 지원양식 수정
  get 'apply_form/edit/:club_id' => 'apply_form#edit'
  post 'apply_form/update/:club_id' => 'apply_form#update'
  
  ## 지원내용 관련 routes ##
  # 지원내용 확인
  get 'apply_content/index'
  
  # 지원서 작성
  get 'apply_content/new/:club_id' => 'apply_content#new'
  post 'apply_content/create/:club_id/:user_id' => 'apply_content#create'
  
  #####################################
  
  #프론트 작업
  get 'front/index'

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
