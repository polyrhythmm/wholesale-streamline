class AddShopReferenceToVariants < ActiveRecord::Migration
  def change
    add_reference :variants, :shop, index: true, foreign_key: true
  end
end
