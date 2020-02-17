# frozen_string_literal: true

class DropFavouriteFoods < ActiveRecord::Migration[6.0]
  def change
    drop_table :favourite_foods
  end
end
