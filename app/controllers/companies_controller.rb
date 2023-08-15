class CompaniesController < ApplicationController
  def index
    all_companies = Company.all
    render json: all_companies.as_json(include: [:financial_data, :business_models, :industries])
  end
  
  def show
    
  end
  
  def create
    company = Company.create(
      company_name: companies_params[:name],
      company_logo: companies_params[:companyLogoLink],
      hq_city: companies_params[:city],
      hq_country: companies_params[:country],
    )

    params[:new_company][:industries]&.each do |industry|
      company.industries << Industry.where(name: industry).first
    end
    params[:new_company][:business_models]&.each do |model|
      company.business_models << BusinessModel.where(name: model).first
    end

    if company.save
      all_companies = Company.all
      render json: all_companies.as_json(include: [:financial_data, :business_models, :industries])
    else
      render json: {status: 'failed', errors: company.errors.full_messages}
    end
  end

  def update

  end

  def destroy

  end

  private

  def companies_params
    params.require(:new_company).permit(:name, :city, :country, :companyLogoLink)
  end
end
