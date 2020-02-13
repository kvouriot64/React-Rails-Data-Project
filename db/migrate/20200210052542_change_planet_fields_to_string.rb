# frozen_string_literal: true

class ChangePlanetFieldsToString < ActiveRecord::Migration[6.0]
  def change
    change_column :planets, :rotation_period, :string
    change_column :planets, :orbital_period, :string
    change_column :planets, :diameter, :string
    change_column :planets, :surface_water, :string
    change_column :planets, :population, :string
  end
end
