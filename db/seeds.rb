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

