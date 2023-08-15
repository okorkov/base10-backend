class CreateFinancialData < ActiveRecord::Migration[7.0]
  def change
    create_table :financial_data do |t|
      t.integer :company_id
      t.integer :revenue_annualized
      t.integer :cash_burn_annualized
      t.integer :gross_profit_percentage
      t.integer :gross_profit_annualized
      t.integer :ebitda_annualized
      t.integer :cash_on_hands
      t.integer :customer_acquisition_cost
      t.integer :loan_to_value
      t.integer :annual_contract_value
      t.integer :average_revenue_per_user
      t.integer :customer_count
      t.timestamp :next_est_fundraiser

      t.timestamps
    end
  end
end
