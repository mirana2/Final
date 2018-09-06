Rails.application.routes.draw do
  
  devise_for :users
  root 'home#index'
  get '/article/new', to: 'article#new'
  post '/article/new', to: 'article#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
