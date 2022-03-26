class CreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :cnic
      t.string :polling_id

      t.timestamps
    end
  end
end