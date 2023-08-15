class CreateFinancialData < ActiveRecord::Migration[7.0]
  def change
    create_table :financial_data do |t|
      t.integer :company_id
      t.string :data_period
      t.decimal :revenue
      t.decimal :burn
      t.decimal :gp_pct
      t.decimal :gp_amount
      t.decimal :ebitda
      t.decimal :cash
      t.decimal :ltv
      t.integer :cac
      t.integer :arpu
      t.integer :customer_count

      t.timestamp :next_fundraise

      t.timestamps
    end
  end
end
