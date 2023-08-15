Rails.application.routes.draw do
  root 'application#welcome'

  resources :companies

  get '/get_industries', to: 'application#get_industries'
  get '/get_business_models', to: 'application#get_business_models'
end
