class RemoveBoroughFromSites < ActiveRecord::Migration[5.2]
  def change
    remove_column :sites, :borough, :string
  end
end
