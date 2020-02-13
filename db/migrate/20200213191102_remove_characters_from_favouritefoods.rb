# frozen_string_literal: true

class RemoveCharactersFromFavouritefoods < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :favourite_foods, column: :Character_id
  end
end
