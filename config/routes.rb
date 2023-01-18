Rails.application.routes.draw do
  
  root to: "customers/homes#top"
  get '/about' => 'customers/homes#about'
  
  # devise_for :customers
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }
  
  namespace :customers do
    # get 'cat_coffee_shops/new'
    # get 'cat_coffee_shops/create'
    # get 'cat_coffee_shops/index'
    # get 'cat_coffee_shops/show'
    # get 'cat_coffee_shops/edit'
    # get 'cat_coffee_shops/update'
    # get 'cat_coffee_shops/destroy'
    resources :cat_coffee_shops, only: [:new,:create,:index,:show,:edit,:update,:destroy] do
      resource :cat_coffee_shop_favorites, only: [:create, :destroy]
      # resource :lost_cat_favorites, only: [:create, :destroy]
      resources :cat_coffee_shop_comments, only: [:create, :destroy]
    end
    
  end
  
  # devise_for :admins
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  
    namespace :admins do
      root to: "homes#top"
      # get 'cat_coffee_shops/index'
      # get 'cat_coffee_shops/show'
      # get 'cat_coffee_shops/edit'
      # get 'cat_coffee_shops/update'
       resources :cat_coffee_shops, only: [:index, :show, :edit, :update] 
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
