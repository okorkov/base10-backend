class CompanyBusinessModel < ApplicationRecord
  belongs_to :company
  belongs_to :business_model
end