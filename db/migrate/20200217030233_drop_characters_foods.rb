# frozen_string_literal: true

class DropCharactersFoods < ActiveRecord::Migration[6.0]
  def change
    drop_table :characters_foods
    drop_table :favouritefoods
  end
end
