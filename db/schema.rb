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

ActiveRecord::Schema[7.0].define(version: 2024_07_15_071124) do
  create_table "stamps", charset: "utf8mb4", force: :cascade do |t|
    t.integer "number", null: false
    t.string "name", null: false
    t.integer "height", null: false
    t.integer "width", null: false
    t.integer "desgin_id", null: false
    t.integer "stamp_color_id", null: false
    t.string "stamp_number", null: false
    t.integer "paper_color_id", null: false
    t.string "paper_name", null: false
    t.string "paper_weight", null: false
    t.integer "temperature", null: false
    t.integer "push_time", null: false
    t.integer "set_time_id", null: false
    t.text "remark", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
