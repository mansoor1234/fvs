class AddVoterIdToPollingStation < ActiveRecord::Migration[6.1]
  def change
    add_column :polling_stations, :voter_id, :integer, foreign_key: true
  end
end
