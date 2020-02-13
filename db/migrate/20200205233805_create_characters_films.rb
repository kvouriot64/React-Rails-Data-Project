class CreateCharactersFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :characters_films do |t|
      t.references :Character, null: false, foreign_key: true
      t.references :Film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
