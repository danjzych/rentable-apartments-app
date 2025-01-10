class ApartmentPresenter
  def initialize(apartment)
    @apartment = apartment
  end

  def full_address
    "#{@apartment.address}, #{@apartment.city}, #{@apartment.state}"
  end

  def availability
    if @apartment.date_available <= Date.today
      "Available Now"
    else
      @apartment.date_available.strftime("%B %-d, %Y").to_s
    end
  end

  def rent
    return "Contact for pricing" unless @apartment.rent
    "$#{@apartment.rent.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\\1,')}/mo"
  end

  def sqft
    return "Square footage unavailable" unless @apartment.sqft
    "#{@apartment.sqft.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\\1,')} sq ft"
  end

  private

  # helper method to format the bath count by dropping zeroes, ie 1.0 -> 1
  def format_bath_count
    @apartment.bath_count.to_f.to_s.sub(/\.0$/, "")
  end
end
