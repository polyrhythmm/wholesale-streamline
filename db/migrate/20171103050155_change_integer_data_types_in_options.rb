class ChangeIntegerDataTypesInOptions < ActiveRecord::Migration
  def change
    change_column :options, :shop_id, :bigint
    change_column :options, :product_id, :bigint
    change_column :options, :option_id, :bigint
  end
end
