class RenameType < ActiveRecord::Migration[6.0]
  def change
  	rename_column :cuisines, :type, :name
  end
end
