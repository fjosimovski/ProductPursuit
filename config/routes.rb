Producthunt::Application.routes.draw do
  devise_for :users
  resources :users

  root 'pages#home'
  match '/home', to: 'pages#home', via: 'get'
  match '/help', to: 'pages#help', via: 'get'
  match '/about', to: 'pages#about', via: 'get'
  match '/welcome', to: 'pages#welcome', via: 'get'
  match '/new-post', to: 'posts#new', via: 'get'  
end
