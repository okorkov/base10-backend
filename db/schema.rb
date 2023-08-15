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

ActiveRecord::Schema[7.0].define(version: 2023_08_15_041049) do
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

  create_table "financial_data", force: :cascade do |t|
    t.integer "company_id"
    t.integer "revenue_annualized"
    t.integer "cash_burn_annualized"
    t.integer "gross_profit_percentage"
    t.integer "gross_profit_annualized"
    t.integer "ebitda_annualized"
    t.integer "cash_on_hands"
    t.integer "customer_acquisition_cost"
    t.integer "loan_to_value"
    t.integer "annual_contract_value"
    t.integer "average_revenue_per_user"
    t.integer "customer_count"
    t.datetime "next_est_fundraiser"
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

end
