class RemoveImageFromOptions < ActiveRecord::Migration
  def change
    remove_column :options, :image
  end
end
