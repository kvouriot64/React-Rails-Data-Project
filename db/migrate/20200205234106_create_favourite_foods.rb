class CreateFavouriteFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :favourite_foods do |t|
      t.references :Character, null: false, foreign_key: true
      t.string :dish
      t.string :description

      t.timestamps
    end
  end
end
