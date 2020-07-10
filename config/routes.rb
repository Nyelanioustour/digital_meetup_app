Rails.application.routes.draw do
  resources :users
  resources :movies
<<<<<<< HEAD
  resources :attendences, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :posts, only: [:index, :new, :create]
=======
  resources :attendences, only: [:index, :new, :create, :edit, :update]
  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]
>>>>>>> a8c9842adb63610d923c865a9d849b4be06d300d
  get "/", to: "application#homepage", as: "homepage"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get '/welcome', to: "sessions#welcome"
  post '/logout', to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
