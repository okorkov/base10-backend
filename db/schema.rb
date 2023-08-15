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

ActiveRecord::Schema[7.0].define(version: 2023_08_15_060432) do
  create_table "business_models", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "company_name"
    t.string "company_logo"
    t.string "domain"
    t.string "cb_uuid"
    t.string "scrub_id"
    t.string "scrub_domain"
    t.string "sw_uuid"
    t.string "tracxn_id"
    t.json "industries"
    t.json "trends"
    t.json "trends_segments"
    t.json "business_models"
    t.string "hq_city"
    t.string "hq_state"
    t.string "hq_zip_code"
    t.string "hq_country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_companies_on_id", unique: true
  end

  create_table "company_business_models", force: :cascade do |t|
    t.integer "company_id"
    t.integer "business_model_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_model_id"], name: "index_company_business_models_on_business_model_id"
    t.index ["company_id"], name: "index_company_business_models_on_company_id"
  end

  create_table "company_industries", force: :cascade do |t|
    t.integer "company_id"
    t.integer "industry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_industries_on_company_id"
    t.index ["industry_id"], name: "index_company_industries_on_industry_id"
  end

  create_table "financial_data", force: :cascade do |t|
    t.integer "company_id"
    t.string "data_period"
    t.decimal "revenue"
    t.decimal "burn"
    t.decimal "gp_pct"
    t.decimal "gp_amount"
    t.decimal "ebitda"
    t.decimal "cash"
    t.decimal "ltv"
    t.integer "cac"
    t.integer "arpu"
    t.integer "customer_count"
    t.datetime "next_fundraise"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_users_on_id", unique: true
  end

  add_foreign_key "company_business_models", "business_models"
  add_foreign_key "company_business_models", "companies"
  add_foreign_key "company_industries", "companies"
  add_foreign_key "company_industries", "industries"
end
