# frozen_string_literal: true

class DropForeignKeys < ActiveRecord::Migration[6.0]
  def change
    drop_table :table_favourite_foods
    create_table :favouritefoods
  end
end
