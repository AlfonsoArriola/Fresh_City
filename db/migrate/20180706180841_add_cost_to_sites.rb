class AddCostToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :cost, :string
  end
end
