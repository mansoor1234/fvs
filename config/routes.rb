Rails.application.routes.draw do
  resources :voters
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'home/about'
  root "home#index"
  resources :candidates
  resources :caste_votes
  get 'district/index'
  get 'district/show'
  get 'district/update'
  get 'district/delete'
  get 'constituency/index'
  get 'constituency/show'
  get 'constituency/update'
  get 'constituency/delete'
  get 'province/index'
  get 'province/show'
  get 'province/update'
  get 'province/delete'
  resources :polling_station
  devise_for :users, skip: :registrations
end

  
