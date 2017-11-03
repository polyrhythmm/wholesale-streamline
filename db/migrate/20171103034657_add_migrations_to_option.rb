class AddMigrationsToOption < ActiveRecord::Migration
  def change
    add_column :options, :option_id, :integer
    add_column :options, :name, :string
    add_column :options, :position, :integer
    add_column :options, :image, :string
  end
end
