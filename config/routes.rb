Rails.application.routes.draw do

  root 'home#form'
  get 'home/form' => 'home#form'
  post 'home/thank_you'
  
end
