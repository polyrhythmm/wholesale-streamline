class ChangeDataTypesOfIntegerInVariants < ActiveRecord::Migration
  def change
     change_column :variants, :variant_id, :bigint
  end
end
