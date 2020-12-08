# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories
  root 'events#index'

  get 'events/filter/:filter' => 'events#index', as: :filtered_events

  resources :users
  get 'signup' => 'users#new'

  resource :session, only: %i[new create destroy]

  resources :events do
    resources :registrations
    resources :likes
  end
end
