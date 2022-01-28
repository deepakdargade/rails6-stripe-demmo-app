Rails.application.routes.draw do
  resources :products
  resources :webhooks, only: [:create]
  root 'products#index'
  post 'checkout/create', to: 'checkout#create'
end
