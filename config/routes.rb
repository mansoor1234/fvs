Rails.application.routes.draw do
  devise_for :users, skip: :registrations


  get 'home/about'
  root "home#index"
end

  
