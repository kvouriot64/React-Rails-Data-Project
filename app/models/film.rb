# frozen_string_literal: true

class Film < ApplicationRecord
  validates :title, :episode_id, :opening_crawl, :director, :producer, :release_date, presence: true
  validates :episode_id, numericality: { only_integer: true }

  has_many :characters_films
  has_many :characters, through: :characters_films

  has_many :films_species
  has_many :species, through: :films_species

  has_many :films_planets
  has_many :planets, through: :films_planets
end
