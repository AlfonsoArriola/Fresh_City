class CreateTrainsSites < ActiveRecord::Migration[5.2]
  def change
    create_table :trains_sites do |t|
      t.references :train, foreign_key: true
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
