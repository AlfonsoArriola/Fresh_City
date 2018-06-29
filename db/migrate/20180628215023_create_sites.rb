class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :address
      t.string :gender
      t.string :age_range
      t.string :days_of_the_week_and_hours_of_operation
      t.string :towel
      t.string :shower_shoe
      t.string :soap
      t.string :feminine_hygiene
      t.string :note

      t.timestamps
    end
  end
end
