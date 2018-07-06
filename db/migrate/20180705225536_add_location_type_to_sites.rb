class AddLocationTypeToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :location_type, :string
  end
end
