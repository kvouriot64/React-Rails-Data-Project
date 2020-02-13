class CreateFilmsStarships < ActiveRecord::Migration[6.0]
  def change
    create_table :films_starships do |t|
      t.references :Film, null: false, foreign_key: true
      t.references :Starship, null: false, foreign_key: true

      t.timestamps
    end
  end
end
