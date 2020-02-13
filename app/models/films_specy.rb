# frozen_string_literal: true

class FilmsSpecy < ApplicationRecord
  validates :Film, :Species, presence: true

  belongs_to :Film
  belongs_to :species
end
