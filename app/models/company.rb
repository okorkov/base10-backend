class Company < ApplicationRecord
  has_many :financial_data

  has_many :company_business_models
  has_many :business_models, through: :company_business_models

  has_many :company_industries
  has_many :industries, through: :company_industries

  validates :company_name, presence: true
  validates :company_name, uniqueness: true
end

