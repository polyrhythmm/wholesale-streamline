class AddMigrationsToVariant < ActiveRecord::Migration
  def change
    add_column :variants, :variant_id, :integer
    add_column :variants, :title, :string
    add_column :variants, :price, :string
    add_column :variants, :sku, :string
    add_column :variants, :position, :integer
    add_column :variants, :inventory_policy, :string
    add_column :variants, :fulfillment_service, :string
    add_column :variants, :inventory_management, :string
    add_column :variants, :option1, :string
    add_column :variants, :option2, :string
    add_column :variants, :option3, :string
    add_column :variants, :taxable, :bool
    add_column :variants, :barcode, :string
    add_column :variants, :grams, :integer
    add_column :variants, :image_id, :string
    add_column :variants, :inventory_quantity, :string
    add_column :variants, :weight, :float
    add_column :variants, :weight_unit, :string
    add_column :variants, :old_inventory_quantity, :integer
    add_column :variants, :requires_shipping, :bool
  end
end
