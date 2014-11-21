Rails.application.routes.draw do
 root "welcome#index"
 resources :entries
 resources :projects
 resources :users
end
