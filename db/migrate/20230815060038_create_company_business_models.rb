class CreateCompanyBusinessModels < ActiveRecord::Migration[7.0]
  def change
    create_table :company_business_models do |t|
      t.references :company, foreign_key: true
      t.references :business_model, foreign_key: true

      t.timestamps
    end
  end
end
