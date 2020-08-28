class RemoveCoordinateColumnsFromRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :longitude
    remove_column :restaurants, :latitude
  end
end
