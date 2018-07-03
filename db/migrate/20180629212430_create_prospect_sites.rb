class CreateProspectSites < ActiveRecord::Migration[5.2]
  def change
    create_table :prospect_sites do |t|
      t.string :name
      t.string :location
      t.string :e_mail
      t.string :phone
      t.string :comment

      t.timestamps
    end
  end
end
