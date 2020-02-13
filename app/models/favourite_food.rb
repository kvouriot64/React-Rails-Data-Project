# frozen_string_literal: true

class FavouriteFood < ApplicationRecord
  validates :dish, :description, presence: true
  validates :dish, length: { minimum: 4 }

  has_many :characters_foods
  has_many :Character, through: :characters_foods
end
