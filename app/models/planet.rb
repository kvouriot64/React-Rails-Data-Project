# frozen_string_literal: true

class Planet < ApplicationRecord
  validates :name, :rotation_period, :orbital_period, :diameter, :climate, :gravity, :terrain, :surface_water, :population, :url, presence: true
  # validates :rotation_period, :orbital_period, :diameter, :surface_water, numericality: { greater_than_or_equal_to: 0 }

  has_many :characters
  has_many :films, through: :films_planets
end
