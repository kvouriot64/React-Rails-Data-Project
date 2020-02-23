# frozen_string_literal: true

class Planet < ApplicationRecord
  validates :name, :rotation_period, :orbital_period, :diameter, :climate, :gravity, :terrain, :surface_water, :population, :url, presence: true
  validates :name, uniqueness: true

  has_many :characters

  has_many :films_planets
  has_many :films, through: :films_planets
end
