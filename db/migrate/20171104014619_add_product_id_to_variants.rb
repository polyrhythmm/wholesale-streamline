class AddProductIdToVariants < ActiveRecord::Migration
  def change
    add_column :variants, :product_id, :bigint
  end
end
