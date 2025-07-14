Rails.application.routes.draw do
  resources :registrations
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"

  namespace :admin do
    resources :games

    root "games#index"
  end
end
