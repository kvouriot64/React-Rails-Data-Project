# frozen_string_literal: true

class DropTableSpecies < ActiveRecord::Migration[6.0]
  def change
    drop_table :species
  end
end
