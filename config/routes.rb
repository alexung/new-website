Rails.application.routes.draw do
get "login", to: 'sessions#new', as: :login
get "logout", to: 'sessions#destroy', as: :logout

get "signup" => "users#new", as: "signup"

 root "welcome#index"
 resources :entries
 resources :projects
 resources :users
 resources :sessions
end
