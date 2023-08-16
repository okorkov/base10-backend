Rails.application.routes.draw do
  root 'application#welcome'

  resources :companies do
    resources :financial_data, only: [:create, :show, :destory]
  end

  get '/get_industries', to: 'application#get_industries'
  get '/get_business_models', to: 'application#get_business_models'
end
