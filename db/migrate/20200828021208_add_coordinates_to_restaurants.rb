class AddCoordinatesToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :latitude, :float
    add_column :restaurants, :longitude, :float
  end
end
