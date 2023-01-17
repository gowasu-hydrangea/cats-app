Rails.application.routes.draw do
  
  root to: "customers/homes#top"

  namespace :customers do
    # root to: "homes#top"
    get 'homes/about'
  end
  
  # devise_for :customers
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }
  
  
  namespace :admins do
    root to: "homes#top"
  end
  # devise_for :admins
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :cat_coffee_shops, only: [:index,:show,:edit,:create,:destroy,:update] do
    resource :cat_coffee_shop_favorites, only: [:create, :destroy]
    resource :lost_cat_favorites, only: [:create, :destroy]
  end
  
end
