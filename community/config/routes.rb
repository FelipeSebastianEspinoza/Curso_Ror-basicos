Rails.application.routes.draw do

  devise_for :users
  get 'home/index'
  root to: "home#index"

  resources :images
  get "probar", to: "control#saludo"
end
