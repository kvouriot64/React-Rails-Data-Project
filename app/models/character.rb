# frozen_string_literal: true

class Character < ApplicationRecord
  belongs_to :Planet

  has_many :characters_species
  has_many :species, through: :characters_species

  has_many :characters_films
  has_many :films, through: :characters_films

  has_many :characters_foods
  has_many :favourite_foods, through: :characters_foods
end
