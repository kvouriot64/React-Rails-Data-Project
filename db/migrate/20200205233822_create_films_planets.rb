class CreateFilmsPlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :films_planets do |t|
      t.references :Film, null: false, foreign_key: true
      t.references :Planet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
