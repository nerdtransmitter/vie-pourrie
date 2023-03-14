Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  get "journal_entries/:id/recap", to: "journal_entries#recap", as: "recap"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :cards, only: [:show, :index] do
    resources :wishlists, only: :create
  end
  resources :wishlists, only: %i[destroy index]
  resources :journal_entries, only: [:new, :edit, :create, :update, :destroy, :show]
  get :filters, to: "cards#filters"
  resources :moods, only: %i[new create edit update destroy]
end
