Rails.application.routes.draw do

  root 'surveys#new'
  # get 'home/new'
  # post 'home/create'
  # get 'home/show'

  resources :surveys
end
