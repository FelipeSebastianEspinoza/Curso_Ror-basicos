Rails.application.routes.draw do

  get 'home/index'
  root to: "home#index"

  resources :images
  get "probar", to: "control#saludo"
end
