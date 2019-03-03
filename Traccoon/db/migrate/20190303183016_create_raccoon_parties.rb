class CreateRaccoonParties < ActiveRecord::Migration[5.2]
  def change
    create_table :raccoon_parties do |t|
      t.belongs_to :raccoon, foreign_key: true
      t.belongs_to :report, foreign_key: true

      t.timestamps
    end
  end
end
