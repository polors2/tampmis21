Rails.application.routes.draw do
  resources :sales
  resources :categories
  resources :products
  resources :sellers
  resources :buyers
  resources :sessions
  get 'admin', to: 'session#admin'
  root to: 'session#new'
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
