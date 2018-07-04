class CreateSiteTrains < ActiveRecord::Migration[5.2]
  def change
    create_table :site_trains do |t|
      t.references :site, foreign_key: true
      t.references :train, foreign_key: true

      t.timestamps
    end
  end
end
