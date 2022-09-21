# frozen_string_literal: true

Rails.application.routes.draw do
  resources :user_lists
  resources :user_regions
  resources :regions
  resources :places
  resources :companies
  root 'home#index'
  devise_for :users
  # devise_scope :user do
  #   # Redirests signing out users back to sign-in
  #   get "users", to: "devise/sessions#new"
  # end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
