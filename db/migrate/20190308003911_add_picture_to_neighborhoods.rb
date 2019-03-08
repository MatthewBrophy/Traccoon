class AddPictureToNeighborhoods < ActiveRecord::Migration[5.2]
  def change
    add_column :neighborhoods, :picture, :string
  end
end
