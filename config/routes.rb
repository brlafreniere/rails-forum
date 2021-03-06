Rails.application.routes.draw do
  root to: "topics#index"

  devise_for :users, controllers: {sessions: "users/sessions", passwords: "users/passwords"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :posts
  resources :replies
  resources :topics
  resources :users
end
