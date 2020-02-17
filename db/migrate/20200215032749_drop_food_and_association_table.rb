# frozen_string_literal: true

class DropFoodAndAssociationTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :favourite_foods
    drop_table :characters_foods
  end
end
