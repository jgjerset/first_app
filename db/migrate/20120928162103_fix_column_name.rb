class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :products, :descriptionn, :description
  end

end
