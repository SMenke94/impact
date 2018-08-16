Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions" }
  root 'pages#home'
  resources :projects do
    member do
        patch :toggle_active_status
    end
    resources :bookings, only: [ :create ]
  end
  get 'my-projects', to: 'profiles#projects'
  get 'my-projects/:id', to: 'profiles#project_details', as: 'my-project'
  get 'profiles/:id', to: 'profiles#show', as: :profile
  resources :bookings, only: [ :index, :show, :destroy ]
end
