# bin/rails db:migrate:down:apartmentiq VERSION=20250110231422
class AddConcessionValueToApartments < ActiveRecord::Migration[8.0]
  def change
    add_column(:apartments, :concession_value, :integer)
  end
end
