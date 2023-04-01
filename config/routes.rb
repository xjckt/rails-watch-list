Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'lists#index'

  resources :lists, except: %i[edit update] do
    resources :bookmarks, only: %i[new create]
    resources :movies, only: :create
  end
  resources :bookmarks, only: %i[new create destroy]
  resources :movies, only: :destroy
end
