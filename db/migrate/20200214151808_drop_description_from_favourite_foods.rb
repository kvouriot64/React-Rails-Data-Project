# frozen_string_literal: true

class DropDescriptionFromFavouriteFoods < ActiveRecord::Migration[6.0]
  def change
    remove_column :favourite_foods, :description
  end
end
