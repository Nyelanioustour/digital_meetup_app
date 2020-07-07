Rails.application.routes.draw do
  resources :users
  resources :movies
<<<<<<< HEAD
  resources :attendences
=======
  resources :attendences, only: [:index, :new, :create]
  get "/homepage", to: "application#homepage", as: "homepage"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get '/welcome', to: "sessions#welcome"
  post '/logout', to: "sessions#destroy"
>>>>>>> 1842770e750e5370ad32b2b868321871bab9c74d
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
