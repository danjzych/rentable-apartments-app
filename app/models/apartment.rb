class Apartment < ApplicationRecord
  def price_per_sqft
    rent / sqft
  end

  def date_available
    date_available.strftime("%B %d, %Y")
  end

  def days_on_market
    (Date.today - date_available).to_i
  end

  def vacant?
    date_available < Date.today
  end
end
