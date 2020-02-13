# frozen_string_literal: true

class FavouriteFood < ApplicationRecord
  validates :dish, :description, presence: true
  validates :dish, length: { minimum: 4 }

  belongs_to :Character
end
