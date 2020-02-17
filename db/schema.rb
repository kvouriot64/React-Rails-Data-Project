# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_17_031443) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "height"
    t.string "mass"
    t.string "hair_color"
    t.string "skin_color"
    t.string "eye_color"
    t.string "birth_year"
    t.string "gender"
    t.integer "Planet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "url"
    t.index ["Planet_id"], name: "index_characters_on_Planet_id"
  end

  create_table "characters_films", force: :cascade do |t|
    t.integer "Character_id", null: false
    t.integer "Film_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Character_id"], name: "index_characters_films_on_Character_id"
    t.index ["Film_id"], name: "index_characters_films_on_Film_id"
  end

  create_table "characters_foods", force: :cascade do |t|
    t.integer "Food_id", null: false
    t.integer "Character_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Character_id"], name: "index_characters_foods_on_Character_id"
    t.index ["Food_id"], name: "index_characters_foods_on_Food_id"
  end

  create_table "characters_species", force: :cascade do |t|
    t.integer "Character_id", null: false
    t.integer "Species_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Character_id"], name: "index_characters_species_on_Character_id"
    t.index ["Species_id"], name: "index_characters_species_on_Species_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.integer "episode_id"
    t.string "opening_crawl"
    t.string "director"
    t.string "producer"
    t.date "release_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "url"
  end

  create_table "films_planets", force: :cascade do |t|
    t.integer "Film_id", null: false
    t.integer "Planet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Film_id"], name: "index_films_planets_on_Film_id"
    t.index ["Planet_id"], name: "index_films_planets_on_Planet_id"
  end

  create_table "films_species", force: :cascade do |t|
    t.integer "Film_id", null: false
    t.integer "Species_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Film_id"], name: "index_films_species_on_Film_id"
    t.index ["Species_id"], name: "index_films_species_on_Species_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "dish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "rotation_period"
    t.string "orbital_period"
    t.string "diameter"
    t.string "climate"
    t.string "gravity"
    t.string "terrain"
    t.string "surface_water"
    t.string "population"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "url"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "classification"
    t.string "designation"
    t.integer "average_height"
    t.string "skin_colors"
    t.string "hair_colors"
    t.string "eye_colors"
    t.string "average_lifespan"
    t.integer "Planet_id", null: false
    t.string "language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "url"
    t.index ["Planet_id"], name: "index_species_on_Planet_id"
  end

  add_foreign_key "characters", "Planets"
  add_foreign_key "characters_films", "Characters"
  add_foreign_key "characters_films", "Films"
  add_foreign_key "characters_foods", "Characters"
  add_foreign_key "characters_foods", "Foods"
  add_foreign_key "characters_species", "Characters"
  add_foreign_key "characters_species", "Species"
  add_foreign_key "films_planets", "Films"
  add_foreign_key "films_planets", "Planets"
  add_foreign_key "films_species", "Films"
  add_foreign_key "films_species", "Species"
  add_foreign_key "species", "Planets"
end
