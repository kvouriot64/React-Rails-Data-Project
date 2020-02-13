class DropTableStarships < ActiveRecord::Migration[6.0]
  def change
    drop_table :starships
  end
end
