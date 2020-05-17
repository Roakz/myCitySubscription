Rails.application.routes.draw do
  namespace :authentication do
    resources :locals
  end
  resources :shifts
  resources :rosters
  resources :users
  get '/welcome/organisation', to: "welcome#index"
  root 'welcome#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
