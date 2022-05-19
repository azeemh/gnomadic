Rails.application.routes.draw do
  resources :roles
  resources :events
  resources :communities
  resources :gnomeparcels
  devise_for :users
  root to: "home#index"
  get 'home/contact'
  get 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
