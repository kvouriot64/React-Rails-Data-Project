class CreateSpecies < ActiveRecord::Migration[6.0]
  def change
    create_table :species do |t|
      t.string :name
      t.string :classification
      t.string :designation
      t.integer :average_height
      t.string :skin_colors
      t.string :hair_colors
      t.string :eye_colors
      t.string :average_lifespan
      t.references :Planet, null: false, foreign_key: true
      t.string :language

      t.timestamps
    end
  end
end
