class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.belongs_to :neighborhood, foreign_key: true
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
