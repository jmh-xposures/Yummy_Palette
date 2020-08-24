class CreateCuisines < ActiveRecord::Migration[6.0]
  def change
    create_table :cuisines do |t|
      t.string :type

      t.timestamps
    end
  end
end
