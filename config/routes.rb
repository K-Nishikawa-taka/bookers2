Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'about' => 'home#about', as: 'about'
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :create, :show, :edit, :update]
end
