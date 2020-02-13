class DropTableCharactersStarships < ActiveRecord::Migration[6.0]
  def change
    drop_table :characters_starships
  end
end
