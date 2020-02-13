class DropTableFilmsVehicles < ActiveRecord::Migration[6.0]
  def change
    drop_table :films_vehicles
  end
end
