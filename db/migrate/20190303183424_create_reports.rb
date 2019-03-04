class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.datetime :time
      t.string :address
      t.float :latitude
      t.float :longitude
      t.belongs_to :user, foreign_key: true
      t.belongs_to :neighborhood, foreign_key: true

      t.timestamps
    end
  end
end
