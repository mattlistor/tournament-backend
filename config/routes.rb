Rails.application.routes.draw do
  resources :users
  resources :brackets
  resources :seeds

  namespace :api do 
    post "/users", to: "users#create"
    get "/get_user", to: "auth#get_user"
    post "/login", to: "auth#login"
  end
end
