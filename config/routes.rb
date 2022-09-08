Rails.application.routes.draw do
  get 'favorites/update'
  root "pages#home"
  devise_for :users

  resources :likes, only: [:create, :destroy]

  resources :posts  do
  	resources :comments
  end

  # root "posts#index"
end
