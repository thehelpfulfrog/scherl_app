Rails.application.routes.draw do
  get '/about', to: 'static_pages#about'
  get '/contact', to: "static_pages#contact"
  get '/random', to: "static_pages#random"
 root 'static_pages#home'
end
