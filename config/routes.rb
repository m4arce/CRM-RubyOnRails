Rails.application.routes.draw do
  root to: "prospects#index"
  resources :conversations
  resources :prospects
  resources :statuses
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
