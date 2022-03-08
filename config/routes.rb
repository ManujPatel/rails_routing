Rails.application.routes.draw do
  #get 'customers/index'
  #get 'customers/new'
  #get 'customers/create'
  #get 'customers/show'
  #get 'customers/edit'
  #get 'customers/update'
  #get 'customers/destroy'
  #get 'orders/index'
  #get 'orders/show'
  #get 'orders/update'
  #get 'orders/destroy'
  #get 'products/index'
  #get 'products/new'
  #get 'products/create'
  #get 'products/show'
  #get 'products/edit'
  #get 'products/update'
  #get 'products/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "products#index"
  resources :products do
    resources :orders
  end
  namespace :business do
    resources :customers, only: [:index, :new, :create, :edit ,:update] do
      member do
        get 'preview'
        match 'delete_customer', via: [:delete]
      end
      collection do
        get 'search'
      end
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
