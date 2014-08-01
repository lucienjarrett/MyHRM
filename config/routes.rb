Rails.application.routes.draw do


  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  resources :users
  resources :sessions
  resources :work_schedules
  resources :educations
  resources :positions
  resources :relationships
  resources :banks
  resources :companies
  resources :departments
  resources :locations
  resources :parishes
  resources :marital_statuses
  resources :employees   
  root to: 'visitors#index'
end
