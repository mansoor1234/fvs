class AddPollingStationIdToConstituency < ActiveRecord::Migration[6.1]
  def change
    add_column :constituencies, :polling_station_id, :integer
  end
end
