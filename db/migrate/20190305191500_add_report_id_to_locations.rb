class AddReportIdToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :report_id, :integer
  end
end
