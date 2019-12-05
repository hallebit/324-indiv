Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/help'
  get 'pages/order'
  root 'pages#home'
end
