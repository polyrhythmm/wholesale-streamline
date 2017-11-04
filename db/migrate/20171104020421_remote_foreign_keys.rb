class RemoteForeignKeys < ActiveRecord::Migration
  def change
     remove_foreign_key :options, :products
     remove_foreign_key :options, :shops
     remove_foreign_key :variants, :shops
  end
end
