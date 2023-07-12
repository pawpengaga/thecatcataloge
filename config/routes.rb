Rails.application.routes.draw do
  resources :reactions, only: [:create]
  resources :opinions

  #Manejador para mis comentarios y mis opiniones
  resources :articles do
    resources :reactions
    resources :opinions
  end

  devise_for :clients, controllers:{
    sessions: 'clients/sessions',
    registrations: 'clients/registrations'
  }

  #Manejador para mis entradas
  resources :clients do
    resources :opinions
    resources :articles
  end
  get 'homes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post 'new_client_reaction', to: 'reactions#new_client_reaction', as: 'new_client_reaction'
  root 'articles#index'
end
