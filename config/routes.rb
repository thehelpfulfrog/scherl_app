Rails.application.routes.draw do
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/contact', to: "static_pages#contact"
  get '/random', to: "static_pages#random"
  get '/signup', to: "users#new"
  resources :users
end
