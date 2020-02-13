# frozen_string_literal: true

class CharactersFood < ApplicationRecord
  belongs_to :Character
  belongs_to :FavouriteFood
end
