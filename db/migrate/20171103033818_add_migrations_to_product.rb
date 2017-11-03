class AddMigrationsToProduct < ActiveRecord::Migration
  def change
    add_column :products, :product_id, :integer
    add_column :products, :title, :string
    add_column :products, :body_html, :text
    add_column :products, :vendor, :string
    add_column :products, :product_type, :string
    add_column :products, :handle, :string
    add_column :products, :published_scope, :string
    add_column :products, :tags, :string
  end
end
