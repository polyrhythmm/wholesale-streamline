class AddProductRefToOptions < ActiveRecord::Migration
  def change
    add_reference :options, :product, index: true, foreign_key: true
  end
end
