class RemoveBoroughFromSites < ActiveRecord::Migration[5.2]
  def change
  	# below was commented out due to it messing up the heroku db:migration
    # remove_column :sites, :borough, :string
  end
end
