# frozen_string_literal: true

class Starship < ApplicationRecord
  validates :name, :model, :manufacturer, :cost_in_credits, :length, :max_atmosphering_speed, :crew, :passengers, :cargo_capacity, :consumables, :hyperdrive_rating, :MGLT, :starship_class, presence: true
  validates :cost_in_credits, :crew, :passengers, :cargo_capacity, :MGLT, :hyperdrive_rating, numericality: { greater_than_or_equal_to: 0 }

  has_many :films, through: :films_starships
  has_many :characters, through: :characters_starships
end
