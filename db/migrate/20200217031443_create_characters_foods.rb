class CreateCharactersFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :characters_foods do |t|
      t.references :Food, null: false, foreign_key: true
      t.references :Character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
