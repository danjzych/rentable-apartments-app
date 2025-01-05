# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Apartment.create!(
  unit_name: "A101",
  address: "123 Main St",
  city: "Springfield",
  state: "IL",
  bed_count: 2,
  bath_count: BigDecimal("1.5"),
  sqft: 850,
  rent: 1200,
  date_avaiable: Date.new(2025, 1, 15) # Specific date available
)

Apartment.create!(
  unit_name: "B202",
  address: "456 Oak Ave",
  city: "Greenwich",
  state: "CT",
  bed_count: 3,
  bath_count: BigDecimal("2.0"),
  sqft: 1200,
  rent: 1600,
  date_avaiable: Date.new(2025, 2, 1) # Specific date available
)

Apartment.create!(
  unit_name: "C303",
  address: "789 Pine Rd",
  city: "Brooklyn",
  state: "NY",
  bed_count: 1,
  bath_count: BigDecimal("1.0"),
  sqft: 650,
  rent: 950,
  date_avaiable: Date.new(2025, 3, 1) # Specific date available
)