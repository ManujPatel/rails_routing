Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/new'
  get 'orders/create'
  get 'orders/show'
  get 'orders/edit'
  get 'orders/update'
  get 'orders/destroy'
  get 'products/index'
  get 'products/new'
  get 'products/create'
  get 'products/show'
  get 'products/edit'
  get 'products/update'
  get 'products/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
