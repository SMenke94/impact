Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions" }
  root 'pages#home'
  resources :projects do
    resources :bookings, only: [ :create ]
  end
  resources :profiles, only: [ :show ]
  resources :bookings, only: [ :destroy ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
