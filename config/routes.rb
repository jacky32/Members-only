Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: 'posts#index'
  resources :users
  resources :posts, only: %i[index create new destroy]
end
