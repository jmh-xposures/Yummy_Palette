class AddCuisineToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_reference :users, :cuisine 
  end
end

