class CreateCharactersStarships < ActiveRecord::Migration[6.0]
  def change
    create_table :characters_starships do |t|
      t.references :Character, null: false, foreign_key: true
      t.references :Starship, null: false, foreign_key: true

      t.timestamps
    end
  end
end
