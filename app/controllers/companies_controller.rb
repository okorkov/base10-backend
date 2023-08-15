class CompaniesController < ApplicationController
  def index
    all_companies = Company.all
    render json: all_companies.as_json(include: [:financial_data, :business_models, :industries])
  end
  
  def show
    
  end
  
  def create
    
  end

  def update

  end

  def destroy

  end
end
