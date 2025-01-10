Apartment.create!(
  unit_name: "A101",
  address: "123 Main St",
  city: "Springfield",
  state: "IL",
  bed_count: 2,
  bath_count: BigDecimal("1.5"),
  sqft: 850,
  rent: 1200,
  date_available: Date.new(2025, 1, 15)
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
  date_available: Date.new(2025, 2, 1),
  concession_value: 100
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
  date_available: Date.new(2025, 3, 1),
  concession_value: 300
)
