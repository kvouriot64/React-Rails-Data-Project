# frozen_string_literal: true

class Species < ApplicationRecord
  # validates :name, :classification, :designation, :average_height, :skin_colors, :hair_colors, :eye_colors, :average_lifespan, presence: true
  # validates :average_height, numericality: { greater_than_or_equal_to: 0 }
  # validates :name, uniqueness: true

  belongs_to :Planet

  has_many :characters_species
  has_many :characters, through: :characters_species

  has_many :films_species
  has_many :films, through: :films_species
end
