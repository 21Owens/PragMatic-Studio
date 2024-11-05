Rails.application.routes.draw do
  resources :genres
  root "movies#index"
  resources :movies do
    resources :favorites, only: [:create, :destroy]
    resources :reviews
  end

get "movies/filter/:filter" => "movies#index", as: :filtered_movies


resource :session, only: [:new,:create,:destroy]

get "signin" => "sessions#new"

resources :users

get "signup" => "users#new"


 end
