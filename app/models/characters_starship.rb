class CharactersStarship < ApplicationRecord
  validates :Character, :Starship, presence: true

  belongs_to :Character
  belongs_to :Starship
end
