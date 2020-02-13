class CreateFilmsVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :films_vehicles do |t|
      t.references :Film, null: false, foreign_key: true
      t.references :Vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
