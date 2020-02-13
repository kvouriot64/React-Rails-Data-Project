# frozen_string_literal: true

class CharactersSpecy < ApplicationRecord
  # validates :Character, :Species, presence: true

  belongs_to :Character
  belongs_to :species
end
