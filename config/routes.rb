Rails.application.routes.draw do
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
