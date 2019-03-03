class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :screen_name
      t.string :neighborhood

      t.timestamps
    end
  end
end
