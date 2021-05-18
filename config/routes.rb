Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get 'confirm', to: 'bookings#confirm', as: :confirm_booking => not needed, we use update
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bathrooms do
    resources :bookings, only: [ :new, :create ]
  end

  resources :bookings, only: [ :index, :edit, :update, :destroy ]

end
