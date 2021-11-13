# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_13_225540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charlists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "system_list_type"
    t.integer "system_list_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dnd5e_fields_lists", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "weight"
    t.integer "height"
    t.string "eyes"
    t.string "skin"
    t.integer "hair"
    t.integer "photo_id"
    t.jsonb "classes"
    t.string "background"
    t.string "player_name"
    t.string "race"
    t.integer "alignment"
    t.jsonb "basic_stats"
    t.jsonb "saves", default: [], array: true
    t.jsonb "skills", default: [], array: true
    t.integer "passive_perception"
    t.integer "armor_class"
    t.integer "initiative"
    t.integer "speed"
    t.integer "max_hp"
    t.jsonb "hit_dice"
    t.string "personality_traits", array: true
    t.string "ideals"
    t.string "bonds"
    t.string "flaws"
    t.jsonb "attack_and_spellcasting"
    t.jsonb "money"
    t.text "equipment"
    t.jsonb "spellslots"
    t.jsonb "spells"
    t.integer "spellcast_ability"
    t.integer "spell_save_dc"
    t.integer "spell_attack_bonus"
    t.text "backstory"
    t.text "allies"
    t.integer "vision_length"
    t.text "skills_and_languages"
    t.jsonb "skills_and_traits"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "role", default: 0, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
