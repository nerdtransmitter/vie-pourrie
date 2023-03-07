Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :cards, only: [:show, :index] do
    resources :wishlists, only: :create
  end
  resources :wishlists, only: :destroy
  resources :journal_entrys, only: [:new, :create, :edit, :update, :destroy, :show]
end
