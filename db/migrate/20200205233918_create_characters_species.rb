class CreateCharactersSpecies < ActiveRecord::Migration[6.0]
  def change
    create_table :characters_species do |t|
      t.references :Character, null: false, foreign_key: true
      t.references :Species, null: false, foreign_key: true

      t.timestamps
    end
  end
end
