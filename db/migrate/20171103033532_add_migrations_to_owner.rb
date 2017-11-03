class AddMigrationsToOwner < ActiveRecord::Migration
  def change
    add_column :owners, :shop_id, :integer
    add_column :owners, :name, :string
    add_column :owners, :email, :string
    add_column :owners, :domain, :string
    add_column :owners, :province, :string
    add_column :owners, :country, :string
    add_column :owners, :address1, :string
    add_column :owners, :zip, :string
    add_column :owners, :city, :string
    add_column :owners, :source, :string
    add_column :owners, :phone, :string
    add_column :owners, :customer_email, :string
    add_column :owners, :primary_location_id, :integer
    add_column :owners, :primary_locale, :string
    add_column :owners, :address2, :string
    add_column :owners, :country_code, :string
    add_column :owners, :country_name, :string
    add_column :owners, :currency, :string
    add_column :owners, :timezone, :string
    add_column :owners, :shop_owner, :string
    add_column :owners, :province_code, :string
    add_column :owners, :myshopify_domain, :string
    add_column :owners, :has_storefront, :bool
  end
end
