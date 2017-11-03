class Product < ActiveRecord::Base
    belongs_to :owners
    has_many :options
    has_many :variants
end
