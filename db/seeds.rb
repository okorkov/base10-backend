# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

["Retailer", "Manufacturer", "Fee-for-service", "Subscription", "Bundling", "Product-as-a-service", "Leasing", "Software-as-a-service", "Franchise", "Distribution", "Freemium", "Advertising", "Razor blades", "Transactional", "Subscription"].each do |item|
  BusinessModel.create(name: item)
end

["Fintech", "Consumer", "Logistics", "Aerospace & Defense", "Agriculture & Forestry", "Automotive", "Business & Consumer Services", "Chemicals", "Construction", "Financial Services", "Foodservice", "Healthcare", "Industrial Goods & Machinery", "Mining", "Oil & Gas", "Packaging", "Power & Utilities", "Retail & Wholesale", "Sport", "Travel & Tourism", "Technology"].each do |item|
  Industry.create(name: item)
end

#company 1
c = Company.create(company_name: "Company 1", hq_city: "San Francisco", hq_country: "United States")
c.business_models << BusinessModel.where(name: "Transactional").first
c.industries << Industry.where(name: "Fintech").first
financial_data1 = FinancialDatum.create(data_period: "quarter", revenue: 2, burn: 1, gp_pct: 0.5, gp_amount: 1, cash: 4, next_fundraise: Date.new(2023-01-01), created_at: Date.new(2021-12-31), company_id: c.id)
c.financial_data << financial_data1
financial_data2 = FinancialDatum.create(data_period: "quarter", revenue: 2.75, burn: 2, gp_pct: 0.55, gp_amount: 1.5125, cash: 4.75, next_fundraise: Date.new(2023-01-01), created_at: Date.new(2022-06-30), company_id: c.id)
c.financial_data << financial_data2
financial_data3 = FinancialDatum.create(data_period: "quarter", revenue: 3.5, burn: 2.5, gp_pct: 0.51, gp_amount: 1.785, cash: 5.75, next_fundraise: Date.new(2024-01-01), created_at: Date.new(2022-12-31), company_id: c.id)
c.financial_data << financial_data3
financial_data4 = FinancialDatum.create(data_period: "quarter", revenue: 4, burn: 2.25, gp_pct: 0.57, gp_amount: 2.28, cash:7.5 , next_fundraise: Date.new(2024-01-01), created_at: Date.new(2024-01-01), company_id: c.id)
c.financial_data << financial_data4
c.save

#company 2
c2 = Company.create(company_name: "Company 2", hq_city: "San Francisco", hq_country: "United States")
c2.business_models << BusinessModel.where(name: "Subscription").first
c2.industries << Industry.where(name: "Consumer").first
financial_data5 = FinancialDatum.create(data_period: "annual", revenue: 10, burn: 7, gp_pct: 0.75, gp_amount: 7.5, ebitda: -6.5, cash: 10.5, ltv: 47.5, cac: 12, arpu: 145, customer_count: 68966, created_at: Date.new(2021-12-31), company_id: c2.id)
c2.financial_data << financial_data5
financial_data6 = FinancialDatum.create(data_period: "annual", revenue: 20, burn: 6, gp_pct: 0.78, gp_amount: 15.6, ebitda: -5.5, cash: 24.5, ltv: 45, cac: 11, arpu: 140, customer_count: 142857, created_at: Date.new(2021-12-31), company_id: c2.id)
c2.financial_data << financial_data6
c2.save

#company 3
c3 = Company.create(company_name: "Company 3", hq_city: "Mexico City", hq_country: "Mexico")
c3.business_models << BusinessModel.where(name: "Subscription").first
c3.industries << Industry.where(name: "Fintech").first
c3.industries << Industry.where(name: "Logistics").first
financial_data7 = FinancialDatum.create(data_period: "annual", revenue: 5, created_at: Date.new(2021-12-31), company_id: c3.id)
c3.financial_data << financial_data7
financial_data8 = FinancialDatum.create(data_period: "annual", revenue: 10, next_fundraise: Date.new(2023-07-01), created_at: Date.new(2023-04-01), company_id: c3.id)
c3.financial_data << financial_data8
c3.save