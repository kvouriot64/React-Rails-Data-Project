# frozen_string_literal: true

class Species < ApplicationRecord
  validates :name, :classification, :designation, :average_height, presence: true
  validates :name, uniqueness: true

  belongs_to :Planet

  has_many :characters_species
  has_many :characters, through: :characters_species

  has_many :films_species
  has_many :films, through: :films_species
end
