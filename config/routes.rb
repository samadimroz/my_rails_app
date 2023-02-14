Rails.application.routes.draw do

  get 'student/new'
  post 'student/new'
  get 'student/show'

  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'
  
  resources :users
  resources :companies
  resources :telephone_dirs
  resources :studentdata
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "home/index"
  # get "libraries"
end
