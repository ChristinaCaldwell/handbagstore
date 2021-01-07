Rails.application.routes.draw do
  devise_for :users
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
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
