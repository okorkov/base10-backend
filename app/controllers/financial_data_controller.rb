class FinancialDataController < ApplicationController
  def show

  end

  def create
    company = Company.find_by_id(params[:company_id])
    financial_record = FinancialDatum.new(financial_data_params)
    financial_record.company = company
    if params[:new_record][:next_fundraise] && params[:new_record][:next_fundraise].length === 10
      month, day, year = params[:new_record][:next_fundraise].split('/')
      financial_record.next_fundraise = Date.new(year.to_i, month.to_i, day.to_i)
    else
      financial_record.next_fundraise = nil
    end
    
    if financial_record.save
      all_companies = Company.all
      render json: all_companies.as_json(include: [:financial_data, :business_models, :industries])
    else
      render json: {status: 'failed', errors: financial_record.errors.full_messages}
    end
  end

  def destroy

  end

  private

  def financial_data_params
    params.require(:new_record).permit(:data_period, :revenue, :burn, :gp_pct, :gp_amount, :ebitda, :cash, :ltv, :cac, :arpu, :customer_count)
  end
end
