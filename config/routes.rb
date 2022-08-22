Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts do
    resources :feedbacks
  end

  resources :lists do
    resources :listposts
  end

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
