# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'home/index'
  # get 'characters/index'
  # get 'characters/show'
  # get 'foods/index'
  # get 'foods/show'
  # get 'films/index'
  # get 'films/show'
  # get 'species/index'
  # get 'species/show'
  # get 'planets/index'
  # get 'planets/show'
  # get 'about/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'

  match '*path', to: 'home#index', via: :all

  # resources 'foods', only: %i[index show] # %i = array of symbols
  # resources 'films', only: %i[index show]
  # resources 'species', only: %i[index show]
  # resources 'characters', only: %i[index show]
  # resources 'planets', only: %i[index show]
  # resources 'about', only: %i[index]
end
