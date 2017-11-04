class RemoveIndexFromMigrations < ActiveRecord::Migration
  def change
    remove_index :variants, :shop_id
    remove_index :options, :shop_id
    remove_index :options, :product_id
    
  end
end
