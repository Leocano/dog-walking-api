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

ActiveRecord::Schema.define(version: 2018_10_20_234755) do

  create_table "dog_walking_statuses", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dog_walkings", force: :cascade do |t|
    t.integer "dog_walking_status_id"
    t.datetime "scheduled_date"
    t.time "duration"
    t.float "latitude"
    t.float "longitude"
    t.datetime "start_time"
    t.datetime "finish_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_walking_status_id"], name: "index_dog_walkings_on_dog_walking_status_id"
  end

  create_table "dog_walkings_pets", id: false, force: :cascade do |t|
    t.integer "dog_walking_id", null: false
    t.integer "pet_id", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
