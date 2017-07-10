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

ActiveRecord::Schema.define(version: 20170705073629) do

  create_table "examinations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_examinations_on_project_id"
  end

  create_table "predicate_numericals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "unit"
    t.float "min", limit: 24
    t.float "max", limit: 24
    t.bigint "sample_metadata_numerical_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sample_metadata_numerical_id"], name: "index_predicate_numericals_on_sample_metadata_numerical_id"
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "alias"
    t.string "title"
    t.string "description"
    t.string "publication"
    t.string "expermien_id"
    t.string "analysis_id"
    t.decimal "client_id", precision: 10
    t.decimal "collector_id", precision: 10
    t.decimal "user_id", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sample_metadata_numericals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "predicate_numerical"
    t.float "value", limit: 24
    t.bigint "sample_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sample_id"], name: "index_sample_metadata_numericals_on_sample_id"
  end

  create_table "samples", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "examination_id"
    t.string "title"
    t.datetime "define_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["examination_id"], name: "index_samples_on_examination_id"
  end

  add_foreign_key "examinations", "projects"
  add_foreign_key "predicate_numericals", "sample_metadata_numericals"
  add_foreign_key "sample_metadata_numericals", "samples"
  add_foreign_key "samples", "examinations"
end
