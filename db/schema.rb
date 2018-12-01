# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_01_163441) do

  create_table "appearance_relationships", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "spell_card_id"
    t.bigint "game_title_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_title_id"], name: "index_appearance_relationships_on_game_title_id"
    t.index ["spell_card_id", "game_title_id"], name: "appearance__relationships_uniqueness_index", unique: true
    t.index ["spell_card_id"], name: "index_appearance_relationships_on_spell_card_id"
  end

  create_table "characters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_titles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "possession_relationships", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "spell_card_id"
    t.bigint "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_possession_relationships_on_character_id"
    t.index ["spell_card_id", "character_id"], name: "possession_relationships_uniqueness_index", unique: true
    t.index ["spell_card_id"], name: "index_possession_relationships_on_spell_card_id"
  end

  create_table "spell_card_readings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "spell_card_id"
    t.string "reading"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spell_card_id"], name: "index_spell_card_readings_on_spell_card_id"
  end

  create_table "spell_cards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "sign_name"
    t.string "spell_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sign_name", "spell_name"], name: "index_spell_cards_on_sign_name_and_spell_name", unique: true
  end

  add_foreign_key "appearance_relationships", "game_titles"
  add_foreign_key "appearance_relationships", "spell_cards"
  add_foreign_key "possession_relationships", "characters"
  add_foreign_key "possession_relationships", "spell_cards"
  add_foreign_key "spell_card_readings", "spell_cards"
end
