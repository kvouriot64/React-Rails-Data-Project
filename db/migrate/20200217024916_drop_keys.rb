# frozen_string_literal: true

class DropKeys < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :characters_foods, column: :Character_id
    remove_foreign_key :characters_foods, column: :FavouriteFood_id
  end
end
