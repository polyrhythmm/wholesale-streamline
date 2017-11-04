class ChangeShopIdDataTypeInVariants < ActiveRecord::Migration
  def change
    change_column :variants, :shop_id, :bigint
  end
end
