Rails.application.routes.draw do
  #adminのルート
  devise_for :admin
  namespace :admin do
    resources :members, only: [:index,:show,:edit,:update]
    resources :products, only: [:index,:new,:create,:edit,:update,:show]
    resources :genres,only: [:index,:create,:edit,:update]
    resources :orders, only: [:show, :update]
    root to: 'orders#top'
    resources :orders_product, only: [:update]
  end
  
  devise_for :members
  scope module: :members do
    root to: 'homes#top' 
    get '/about' => 'homes#about'
    resource :members, only: [:show, :edit, :update]
    patch 'members/withdraw' => 'members#withdraw', as: :members_withdraw
    get 'members/leave' => 'members#leave'
    resources :products, only: [:show, :index]
    resources :cart_products, only: [:index, :create, :update, :destroy]
    delete 'cart_products' => 'cart_products#destroy_all', as: :destroy_all_members_cart_products
    resources :orders, only:[:new, :create, :show, :index]
    post '/orders/info'  => 'orders#info' 
    get  '/orders/thanks' => 'orders#thanks'
    resources :destinations, only: [:index, :create, :edit, :update, :destroy]
  end
  
end