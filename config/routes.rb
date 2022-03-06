Rails.application.routes.draw do
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
  # Defines the root path route ("/")
  # root "articles#index"
end
