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

ActiveRecord::Schema[8.0].define(version: 2025_06_10_181422) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "app_stages", primary_key: ["app_id", "stage_id"], force: :cascade do |t|
    t.string "app_id", null: false
    t.string "stage_id", null: false
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_id"], name: "index_app_stages_on_app_id"
    t.index ["stage_id"], name: "index_app_stages_on_stage_id"
  end

  create_table "apps", id: :string, force: :cascade do |t|
    t.string "repo_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["repo_url"], name: "index_apps_on_repo_url", unique: true
  end

  create_table "stages", id: :string, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "app_stages", "apps"
  add_foreign_key "app_stages", "stages"
end
