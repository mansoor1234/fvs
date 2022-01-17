class AddProvinceIdToDistrict < ActiveRecord::Migration[6.1]
  def change
    add_column :districts, :province_id, :integer
  end
end
