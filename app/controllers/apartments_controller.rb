class ApartmentsController < ApplicationController
    before_action :set_apartment, only: %i[ show edit update ]
    def index
        @apartments = Apartment.all
    end

    def show
    end

    def new
        @apartment = Apartment.new
    end

    def create
        @apartment = Apartment.new(apartment_params)
        if @apartment.save
          redirect_to @apartment
        else
          render :new, status: :unprocessable_entity
        end
    end

    def edit
    end

    def update
        if @apartment.update(apartment_params)
          redirect_to @apartment
        else
          render :edit, status: :unprocessable_entity
        end
    end

    private
    def apartment_params
        params.expect(apartment: [ :unit_name,
                                    :address,
                                    :city,
                                    :state,
                                    :bed_count,
                                    :bath_count,
                                    :sqft,
                                    :rent,
                                    :date_available ])
    end

    def set_apartment
        @apartment = Apartment.find(params[:id])
    end
end
