Rails.application.routes.draw do
  get 'favorites/update'
  root "pages#home"
  devise_for :users

  resources :likes, only: [:create, :destroy]

  resources :favorites
  resources :posts  do
  	resources :comments, only: [:create, :destroy]
  end

  # root "posts#index"
end
