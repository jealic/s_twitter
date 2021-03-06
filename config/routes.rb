Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "tweets#index"
  resources :tweets, only: [:index, :create]

  namespace :admin do
    root "tweets#index"
    resources :tweets, only: [:index, :create, :destroy]
    resources :users, only: [:index, :show]
  end

end
