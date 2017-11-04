class AddFieldsToProduct < ActiveRecord::Migration
  def change
    add_column :products, :variants, :text
    add_column :products, :options, :text
  end
end
