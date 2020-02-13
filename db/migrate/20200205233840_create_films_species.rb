class CreateFilmsSpecies < ActiveRecord::Migration[6.0]
  def change
    create_table :films_species do |t|
      t.references :Film, null: false, foreign_key: true
      t.references :Species, null: false, foreign_key: true

      t.timestamps
    end
  end
end
