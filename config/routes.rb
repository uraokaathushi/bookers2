Rails.application.routes.draw do
  get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root to: 'homes#top'
   resources :books, only: [:new, :create, :index, :show]
   resources :users, only: [:new, :index, :show]
end