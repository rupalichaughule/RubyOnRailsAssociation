Rails.application.routes.draw do
  resources :posts do
    resources :comments
  
  end
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users 
  #resources :comments
  # devise_for :students do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
