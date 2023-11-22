Rails.application.routes.draw do

  root to: "products#index"


  devise_for :users

  resources :products do
    get :user, on: :collection
    resources :sales, only: [:new, :create]
  end

  resources :sales, only: :index
end
