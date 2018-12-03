Rails.application.routes.draw do
  resources :stories

  resources :users

  resource :sessions, only: :destroy
end
