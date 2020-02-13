class CreateCharactersVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :characters_vehicles do |t|
      t.references :Vehicle, null: false, foreign_key: true
      t.references :Character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
