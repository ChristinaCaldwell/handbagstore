Rails.application.routes.draw do
  get 'cart/index'
  resources :items
  # get 'static_pages/home'
  # get 'static_pages/about'
  root 'static_pages#home'
  
  get '/about' => 'static_pages#about'
  get '/home' => 'static_pages#home'
  
  get '/login' => 'user#login'
  get '/logout' => 'user#logout'
  
  
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/cart/clear' => 'cart#clear'
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
