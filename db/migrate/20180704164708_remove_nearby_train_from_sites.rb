class RemoveNearbyTrainFromSites < ActiveRecord::Migration[5.2]
  def change
    remove_column :sites, :nearby_train, :string
  end
end
