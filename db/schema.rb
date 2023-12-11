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

ActiveRecord::Schema[7.0].define(version: 2023_12_11_222400) do
  create_table "encounters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "isActive"
    t.integer "round"
    t.integer "turn"
    t.integer "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
