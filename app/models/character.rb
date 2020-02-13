# frozen_string_literal: true

class Character < ApplicationRecord
  belongs_to :Planet

  has_many :characters_species
  has_many :species, through: :characters_species

  has_many :characters_films
  has_many :characters_starships
  has_many :characters_vehicles

  has_many :films, through: :characters_films
  has_many :starships, through: :characters_starships
  has_many :vehicles, through: :characters_vehicles
end
