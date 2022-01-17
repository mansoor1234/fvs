Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
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
  get 'polling_station/index'
  get 'polling_station/show'
  get 'polling_station/update'
  get 'polling_station/delete'
  devise_for :users, skip: :registrations

  get 'home/about'
  root "home#index"
end

  
