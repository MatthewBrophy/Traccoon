class CreateRaccoons < ActiveRecord::Migration[5.2]
  def change
    create_table :raccoons do |t|
      t.string :name
      t.string :color
      t.string :size
      t.string :string
      t.boolean :sex
      t.boolean :alone
      t.string :favorite_food
      t.string :disposition

      t.timestamps
    end
  end
end