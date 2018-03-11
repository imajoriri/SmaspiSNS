Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
  #get 'home/index'
  root to: "home#index"

  resources :tweets, only: [:index, :new, :create]
  resources :tweets do
    collection do
      get :method
    end
  end 

  resources :redirects, only: [:index] 

  resources :lambda, only: [:index]


  resources :smaspis, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
