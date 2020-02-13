# frozen_string_literal: true

class FilmsVehicle < ApplicationRecord
  validates :Film, :Vehicle, presence: true

  belongs_to :Film
  belongs_to :Vehicle
end
