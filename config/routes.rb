Rails.application.routes.draw do
  root 'pages#home'
  get 'help',       to: 'pages#help'
  get 'dummy',      to: 'pages#order'
  get 'order',      to: 'orders#new'
  get 'orders',     to: 'orders#list'
  resources :orders
end
