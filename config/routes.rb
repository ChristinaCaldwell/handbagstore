Rails.application.routes.draw do
  resources :categories
  get 'subscribers/index'
  get 'orderitems/index'
  get 'orderitems/show'
  get 'orderitems/new'
  get 'orderitems/edit'
  
  resources :orders do
    resources:orderitems
  end
  
  devise_for :users do 
    resources :orders 
  end
  
  get '/checkout' => 'cart#createOrder'
  
  get 'cart/index'
  resources :items
  # get 'static_pages/home'
  # get 'static_pages/about'
  root to: 'static_pages#home'
  
  get '/about' => 'static_pages#about'
  get '/home' => 'static_pages#home'
  
  get '/login' => 'user#login'
  get '/logout' => 'user#logout'
  
  get '/cart/clear' => 'cart#clear'
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id' => 'cart#remove'
  
  get '/cart/decrease/:id' => 'cart#decrease'
  get '/cart/increase/:id' => 'cart#increase'
  
  get 'category/:title', to: 'static_pages#category'
  
  post '/search' => 'items#search'
  
  
  resources :subscribers
  get '/subsribers', to: 'subscribers#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
