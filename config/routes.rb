Rails.application.routes.draw do
  devise_for :users
  get 'dashboard', to: "pages#index", as: :dashboard
  get 'bookings', to: "pages#show", as: :bookings
  root to: "pages#home"
    resources :tools do
      resources :bookings
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
