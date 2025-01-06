class RenameDateAvailable < ActiveRecord::Migration[8.0]
  def change
    rename_column :apartments, :date_avaiable, :date_available
  end
end
