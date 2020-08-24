class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.boolean :vegetarian
      t.float :longitude
      t.float :latitude
      t.references :cuisine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
