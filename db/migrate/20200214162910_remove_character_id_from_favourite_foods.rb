# frozen_string_literal: true

class RemoveCharacterIdFromFavouriteFoods < ActiveRecord::Migration[6.0]
  def change
    remove_column :favourite_foods, :Character_id
  end
end
