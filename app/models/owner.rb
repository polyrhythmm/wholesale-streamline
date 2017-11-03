class Owner < ActiveRecord::Base
    has_many :products
end
