class ApplicationController < ActionController::API

  def welcome
    render json: {status: 200, health: 'ok'}
  end

  def get_industries
    render json: Industry.all.as_json
  end

  def get_business_models
    render json: BusinessModel.all.as_json
  end
end
