class AddPrimaryKeyProducts < ActiveRecord::Migration
  def change
   
    add_column :products, :product_id, :bigint
  end
end
