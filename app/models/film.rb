# frozen_string_literal: true

class Film < ApplicationRecord
  validates :title, :episode_id, :opening_crawl, :director, :producer, :release_date, presence: true
  validates :episode_id, numericality: { greater_than_or_equal_to: 0 }

  has_many :characters, through: :characters_films
  has_many :species, through: :films_species
  has_many :starships, through: :films_starships
  has_many :vehicles, through: :films_vehicles
  has_many :planets, through: :films_planets
end
