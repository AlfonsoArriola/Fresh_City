class ChangeAgeRangeToStringInSites < ActiveRecord::Migration[5.2]
  def change
  	change_column :sites, :age_range, :string
  end
end
