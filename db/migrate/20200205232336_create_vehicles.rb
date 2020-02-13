# frozen_string_literal: true

class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :model
      t.string :manufacturer
      t.integer :cost_in_credits
      t.integer :max_atmosphering_speed
      t.integer :crew
      t.integer :passengers
      t.float   :length
      t.integer :cargo_capacity
      t.string :consumables
      t.string :vehicle_class

      t.timestamps
    end
  end
end
