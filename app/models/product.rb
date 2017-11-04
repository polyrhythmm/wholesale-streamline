class Product < ActiveRecord::Base
    belongs_to :owners
    has_many :options
    has_many :variants
    self.primary_key = 'product_id'
    accepts_nested_attributes_for :options, :variants
    
    
end
