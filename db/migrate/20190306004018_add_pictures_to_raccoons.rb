class AddPicturesToRaccoons < ActiveRecord::Migration[5.2]
  def change
    add_column :raccoons, :picture, :string
  end
end
