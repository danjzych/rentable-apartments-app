require "test_helper"

class ApartmentsControllerTest < ActionDispatch::IntegrationTest
  test "calculates rent per square foot" do
    # Create an apartment with a monthly rent of $2000 and a square footage of 1000
    apt = Apartment.new(rent: 2000, sqft: 1000)
    # Assert that the rent per square foot is $2
    assert_equal 2, apt.price_per_sqft
  end

  test "formats date available" do
    apt = Apartment.new(date_available: Date.new(2025, 1, 1))
    assert_equal "January 01, 2025", apt.date_available
  end

  test "days on market" do
    apt = Apartment.new(date_available: Date.new(2025, 1, 1))
    assert_equal 42, apt.days_on_market
  end

  test "vacant" do
    apt = Apartment.new(date_available: Date.new(2025, 1, 1))
    assert_equal true, apt.vacant?
  end
end
