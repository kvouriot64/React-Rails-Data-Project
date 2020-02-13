# frozen_string_literal: true

class FilmsStarship < ApplicationRecord
  validates :Film, :Starship, presence: true

  belongs_to :Film
  belongs_to :Starship
end
