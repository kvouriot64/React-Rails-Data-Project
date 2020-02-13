# frozen_string_literal: true

class FilmsPlanet < ApplicationRecord
  validates :Film, :Planet, presence: true

  belongs_to :Film
  belongs_to :Planet
end
