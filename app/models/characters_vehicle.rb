# frozen_string_literal: true

class CharactersVehicle < ApplicationRecord
  validates :Character, :Vehicle, presence: true

  belongs_to :Character
  belongs_to :Vehicle
end
