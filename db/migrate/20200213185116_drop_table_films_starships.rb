# frozen_string_literal: true

class DropTableFilmsStarships < ActiveRecord::Migration[6.0]
  def change
    drop_table :films_starships
  end
end
