Rails.application.routes.draw do
get "login", to: 'sessions#new', as: :login
get "logout", to: 'sessions#destroy', as: :logout

get "signup" => "users#new", as: "signup"

 root "welcome#index"
 resources :entries
 resources :projects
 resources :users
 resources :sessions

 get '/christmas', to: 'christmas_card#index'
 get '/christmas-yay', to: 'christmas_card#yay'
 get '/christmas-poo', to: 'christmas_card#poo_vuth'
 get '/christmas-vuthea-pha', to: 'christmas_card#vuthea_pha'
 get '/christmas-card-owm', to: 'christmas_card#owm'

 get '/christmas-password', to: 'christmas_card#password'

 post '/christmas-password-entered', to: 'christmas_card#password_entered'
end
