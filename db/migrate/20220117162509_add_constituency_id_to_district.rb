class AddConstituencyIdToDistrict < ActiveRecord::Migration[6.1]
  def change
    add_column :districts, :constituency_id, :integer
  end
end
