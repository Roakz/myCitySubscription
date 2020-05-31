Rails.application.routes.draw do
  # mounting the grape api
  mount API::Base => "/"

  # resources & namespaces
  namespace :authentication do
    resources :locals
  end

  resources :shifts
  resources :rosters
  resources :users

  # welcome/statics
  get '/welcome/organisation', to: "welcome#index"
  root 'welcome#home'
  
  # Sessions
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
