# frozen_string_literal: true

Rails.application.routes.draw do
  root 'events#index'

  resources :users
  resources :events do
    resources :registrations
  end
end
