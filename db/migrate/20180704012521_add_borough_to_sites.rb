class AddBoroughToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :borough, :string
  end
end
