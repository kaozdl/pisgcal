Rails.application.routes.draw do
  get 'one_on_ones/new'
  get 'one_on_ones/create'
  get 'one_on_ones/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  resources :one_on_ones
end
