class DropTableCharactersVehicles < ActiveRecord::Migration[6.0]
  def change
    drop_table :characters_vehicles
  end
end
