Rails.application.routes.draw do
  get 'home/about' =>'home#about', as: 'about'
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :create, :show, :edit, :update]
end
