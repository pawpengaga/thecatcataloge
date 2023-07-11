Rails.application.routes.draw do
  resources :articles
  devise_for :clients, controllers:{
    sessions: 'clients/sessions',
    registrations: 'clients/registrations'
  }
  get 'homes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'homes#index'
end
