class ChangeShopIdTypeInOwners < ActiveRecord::Migration
  def change
     change_column :owners, :shop_id, :bigint
  end
end
