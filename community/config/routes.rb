Rails.application.routes.draw do
  resources :images
  get "probar", to: "control#saludo"
end
