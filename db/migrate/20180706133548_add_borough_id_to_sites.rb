class AddBoroughIdToSites < ActiveRecord::Migration[5.2]
  def change
    add_reference :sites, :borough_id, foreign_key: true
  end
end
