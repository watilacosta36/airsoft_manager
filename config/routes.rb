Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  devise_for :users
  resources :registrations
  resources :public_games, only: :index, path: "/games"


  root "home#index"

  namespace :admin do
    resources :games do
      member do
        post :publish
      end
    end

    root "games#index"
  end
end
