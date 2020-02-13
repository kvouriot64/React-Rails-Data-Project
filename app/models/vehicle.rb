# frozen_string_literal: true

class Vehicle < ApplicationRecord
  validates :name, :model, :manufacturer, :cost_in_credits, :length, :max_atmosphering_speed, :crew, :passengers, :cargo_capacity, :consumables, :vehicle_class, presence: true
  #validates :cost_in_credits, :length, :max_atmosphering_speed, :crew, :passengers, :cargo_capacity, numericality: { less_than_or_equal_to: 0 }

  has_many :characters, through: :characters_vehicles
  has_many :films, through: :films_vehicles
end
