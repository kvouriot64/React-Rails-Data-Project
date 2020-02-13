# frozen_string_literal: true

class CreateStarships < ActiveRecord::Migration[6.0]
  def change
    create_table :starships do |t|
      t.string :name
      t.string :model
      t.string :manufacturer
      t.integer :cost_in_credits
      t.integer :length
      t.string :max_atmosphering_speed
      t.integer :crew
      t.integer :passengers
      t.integer :cargo_capacity
      t.string :consumables
      t.float :hyperdrive_rating
      t.integer :MGLT
      t.string :starship_class

      t.timestamps
    end
  end
end
