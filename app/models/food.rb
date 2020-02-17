# frozen_string_literal: true

class Food < ApplicationRecord
  validates :dish, presence: true
  validates :dish, uniqueness: true

  has_many :characters_foods
  has_many :characters, through: :characters_foods
end
