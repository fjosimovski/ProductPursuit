Producthunt::Application.routes.draw do
  devise_for :users
  resources :users
  resources :post, only: [:create, :destroy]


  root 'pages#home'
  match '/home', to: 'pages#home', via: 'get'
  match '/help', to: 'pages#help', via: 'get'
  match '/about', to: 'pages#about', via: 'get'
  match '/welcome', to: 'pages#welcome', via: 'get'
  match '/new', to: 'posts#create', via: 'post'  
end
