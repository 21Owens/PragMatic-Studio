Rails.application.routes.draw do
  resources :genres
  root "movies#index"
  resources :movies do
    resources :favorites, only: [:create, :destroy]
    resources :reviews
  end

resource :session, only: [:new,:create,:destroy]

get "signin" => "sessions#new"

resources :users

get "signup" => "users#new"


 end
