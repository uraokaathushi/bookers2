Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  get "/home/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

   resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
   resources :users, only: [:new, :index, :show, :edit, :update]
end
