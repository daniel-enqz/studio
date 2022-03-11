Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resource :dashboard, only: :show

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :studios, only: %i[index show new create edit update destroy] do
    resources :bookings, only: %i[create edit update]
  end
  resources :bookings, only: %i[destroy] do
    member do
      patch :approve, :reject
    end
  end
end
