class Apartment < ApplicationRecord
  def get_price_per_sqft
    rent / sqft
  end
end
