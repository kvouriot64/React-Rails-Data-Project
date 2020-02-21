# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    get 'characters/index'
    get 'characters/show/:id', to: 'characters#show'
    get 'foods/index'
    get 'foods/show:id', to: 'foods#show'
    get 'films/index'
    get 'films/show/:id', to: 'films#show'
    get 'species/index'
    get 'species/show/:id', to: 'species#show'
    get 'planets/index'
    get 'planets/show/:id', to: 'planets#show'
    get 'about/index'

    # resources 'foods', only: %i[index show] # %i = array of symbols
    # resources 'films', only: %i[index show]
    # resources 'species', only: %i[index show]
    # resources 'characters', only: %i[index show]
    # resources 'planets', only: %i[index show]
    # resources 'about', only: %i[index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # catch-all route
  root 'home#index'
  match '*path', to: 'home#index', via: :all
end
