class AddBoroughToSites < ActiveRecord::Migration[5.2]
  def change
    add_reference :sites, :borough, foreign_key: true
  end
end
