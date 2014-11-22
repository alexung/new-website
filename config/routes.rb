Rails.application.routes.draw do
get "login" => 'sessions#new', :as => "login"
get "logout" => 'sessions#destroy', :as => "logout"


 root "welcome#index"
 resources :entries
 resources :projects
 resources :users
end
