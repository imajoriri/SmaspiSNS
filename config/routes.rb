Rails.application.routes.draw do
  get 'home/index'

  resources :tweets, only: [:index, :new, :create]
  resources :tweets do
    collection do
      get :method
    end
  end 

  resources :smaspis, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
