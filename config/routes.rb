Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  resources :products do
    get :user, on: :collection
  end
  # Defines the root path route ("/")
  # root "posts#index"

    resources :sales, only: [:new, :create]
  end
end
