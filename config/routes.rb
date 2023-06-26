Rails.application.routes.draw do
  namespace :admin do
    resources :users
    root to: "users#index"
  end

  devise_for :users

  authenticated :user do
    root to: "home#index", as: :user_root
  end

  root to: "home#index"
end
