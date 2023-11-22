Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'tools#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get 'dashboard', to: "pages#index", as: :dashboard
  get 'mylisting', to: "pages#show", as: :mylisting
  get 'home', to: "pages#home", as: :homepage

  resources :tools do
    resources :bookings
  end
end
