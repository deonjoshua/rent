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
  get 'bookings', to: "pages#show", as: :bookings

  resources :tools do
    resources :bookings
  end
end
