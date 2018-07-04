class AddNearbyTrainToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :nearby_train, :string
  end
end
