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

ActiveRecord::Schema.define(version: 20161026004853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: :cascade do |t|
    t.text    "name"
    t.text    "goal"
    t.text    "video_path"
    t.text    "description"
    t.integer "reps_number"
    t.integer "rest_time"
    t.text    "beta"
  end

  create_table "exercises_tags", force: :cascade do |t|
    t.integer "exercise_id"
    t.integer "tag_id"
    t.index ["exercise_id"], name: "index_exercises_tags_on_exercise_id", using: :btree
    t.index ["tag_id"], name: "index_exercises_tags_on_tag_id", using: :btree
  end

  create_table "intensities", force: :cascade do |t|
    t.text    "title"
    t.text    "description"
    t.integer "exercise_id"
    t.index ["exercise_id"], name: "index_intensities_on_exercise_id", using: :btree
  end

  create_table "levels", force: :cascade do |t|
    t.integer "sets"
    t.time    "duration"
    t.integer "exercise_id"
    t.index ["exercise_id"], name: "index_levels_on_exercise_id", using: :btree
  end

  create_table "saved_days", force: :cascade do |t|
    t.text    "title"
    t.integer "user_id"
    t.index ["user_id"], name: "index_saved_days_on_user_id", using: :btree
  end

  create_table "saved_days_exercises", force: :cascade do |t|
    t.integer "saved_day_id"
    t.integer "exercise_id"
    t.index ["exercise_id"], name: "index_saved_days_exercises_on_exercise_id", using: :btree
    t.index ["saved_day_id"], name: "index_saved_days_exercises_on_saved_day_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.text "name"
  end

  create_table "users", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "email"
  end

  add_foreign_key "exercises_tags", "exercises"
  add_foreign_key "exercises_tags", "tags"
  add_foreign_key "intensities", "exercises"
  add_foreign_key "levels", "exercises"
  add_foreign_key "saved_days", "users"
  add_foreign_key "saved_days_exercises", "exercises"
  add_foreign_key "saved_days_exercises", "saved_days"
end
