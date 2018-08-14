Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions" }
  root 'pages#home'
  resources :projects do
    resources :bookings, only: [ :create ]
  end
  get 'profiles/projects', to: 'profiles#projects_dashboard'
  get 'profiles/bookings', to: 'profiles#bookings_dashboard'
  get 'profiles/:id', to: 'profiles#show', as: :profile
  resources :bookings, only: [ :destroy ]

  # resources :bookings, only: [ :destroy ]
end
