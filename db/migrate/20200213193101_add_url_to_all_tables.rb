# frozen_string_literal: true

class AddUrlToAllTables < ActiveRecord::Migration[6.0]
  def change
    add_column :films, :url, :string
    add_column :characters, :url, :string
    add_column :species, :url, :string
  end
end
