class AddShopReferenceToOptions < ActiveRecord::Migration
  def change
    add_reference :options, :shop, index: true, foreign_key: true
  end
end
