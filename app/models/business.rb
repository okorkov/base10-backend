class BusinessModel < ApplicationRecord
  has_many :company_business_models
  has_many :companies, through: :company_business_models
end

