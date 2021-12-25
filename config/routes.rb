Rails.application.routes.draw do
  get 'home/about' =>'home#about', as: 'about'
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:index, :create, :show, :edit, :update]
end
