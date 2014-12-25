Rails.application.routes.draw do
get "login", to: 'sessions#new', as: :login
get "logout", to: 'sessions#destroy', as: :logout

get "signup" => "users#new", as: "signup"

 root "welcome#index"
 resources :entries
 resources :projects
 resources :users
 resources :sessions


 get '/christmas-yay', to: 'christmas_card#yay'
 get '/christmas-poo', to: 'christmas_card#poo_vuth'
 get '/christmas-vuthea-pha', to: 'christmas_card#vuthea_pha'
 get '/christmas-owm', to: 'christmas_card#owm'


 get '/christmas-card-2014', to: 'christmas_card#index'
 get '/christmas-card-2014-password', to: 'christmas_card#password'

 post '/christmas-card-2014-password-entered', to: 'christmas_card#password_entered'
end
