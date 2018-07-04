class AddWebsiteToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :website, :string
  end
end
