Rails.application.routes.draw do
  root "chatrooms#index"

  resources :chatrooms
  resources :messages
end
