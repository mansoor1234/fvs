class CreateCasteVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :caste_votes do |t|
      t.integer :polling_id
      t.integer :candidate_id
      t.integer :voter_id

      t.timestamps
    end
  end
end
