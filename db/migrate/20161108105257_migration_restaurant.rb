class MigrationRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurant, :address, :string
  end
end
