Rails.application.routes.draw do
  use_doorkeeper
  devise_for :test_users
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

  namespace :api do
    namespace :v1 do
      get '/me' => 'test_users#me'
    end
  end

  resources :redirects, only: [:index] 

  resources :lambda, only: [:index]
  post "lambda/alexa"


  resources :smaspis, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
