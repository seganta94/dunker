Rails.application.routes.draw do

  root to: "products#index"


  devise_for :users

  resources :products do

    collection do
      get 'filter'
    end

    get :user, on: :collection
    resources :sales, only: [:new, :create]
  end

  resources :sales, only: :index

end
