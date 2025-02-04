require "test_helper"

class ApartmentsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "calculates rent per square foot" do
    # Create an apartment with a monthly rent of $2000 and a square footage of 1000
    apt = Apartment.new(rent: 2000, sqft: 1000)
    # Assert that the rent per square foot is $2
    assert_equal 2, apt.get_price_per_sqft
  end
end
