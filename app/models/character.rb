# frozen_string_literal: true

class Character < ApplicationRecord
  validates :name, :height, :mass, :hair_color, :skin_color, :eye_color, :birth_year, :gender, presence: true
  validates :height, :mass, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :Planet

  has_many :characters_species
  has_many :species, through: :characters_species

  has_many :characters_films
  has_many :films, through: :characters_films

  has_many :characters_foods
  has_many :foods, through: :characters_foods
end
