class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :company_logo
      t.string :domain
      t.string :cb_uuid
      t.string :scrub_id
      t.string :scrub_domain
      t.string :sw_uuid
      t.string :tracxn_id
      t.json :industries
      t.json :trends
      t.json :trends_segments
      t.json :business_models
      t.string :hq_city
      t.string :hq_state
      t.string :hq_zip_code
      t.string :hq_country

      t.timestamps
    end
    add_index :companies, :id, unique: true
  end
end
