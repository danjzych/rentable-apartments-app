class CreateApartments < ActiveRecord::Migration[8.0]
  def change
    create_table :apartments do |t|
      t.string :unit_name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :bed_count, null: false
      t.decimal :bath_count, precision: 2, scale: 1, null: false
      t.integer :sqft
      t.integer :rent
      t.date :date_avaiable

      t.timestamps
    end
  end
end
