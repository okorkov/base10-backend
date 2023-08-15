class Industry < ApplicationRecord
  has_many :company_industries
  has_many :companies, through: :company_industries

  validates :name, presence: true
  validates :name, uniqueness: true
end
