# frozen_string_literal: true

class CharactersFood < ApplicationRecord
  validates :Food, :Character, presence: true

  belongs_to :Food
  belongs_to :Character
end
