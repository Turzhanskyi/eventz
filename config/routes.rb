# frozen_string_literal: true

Rails.application.routes.draw do
  root 'events#index'

  resources :users
  get 'signup' => 'users#new'

  resource :session, only: %i[new create destroy]

  resources :events do
    resources :registrations
  end
end
