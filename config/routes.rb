Rails.application.routes.draw do
get "login", to: 'sessions#new', as: :login
get "logout", to: 'sessions#destroy', as: :logout

get "signup" => "users#new", as: "signup"

 root "welcome#index"
 resources :entries
 resources :projects
 resources :users
 resources :sessions

 get '/christmas-card-2014', to: 'christmas_card#index'
 get '/christmas-card-2014-password', to: 'christmas_card#password'

 post '/christmas-card-2014-password-entered', to: 'christmas_card#password_entered'
end
