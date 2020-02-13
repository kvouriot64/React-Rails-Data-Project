# frozen_string_literal: true

class CharactersFilm < ApplicationRecord
  validates :Character, :Film, presence: true

  belongs_to :Character
  belongs_to :Film
end
