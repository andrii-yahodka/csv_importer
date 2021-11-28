class Supplier < ApplicationRecord
  has_many :products, class_name: 'Product',
                      foreign_key: :supplier_code,
                      primary_key: :code,
                      dependent: :destroy,
                      inverse_of: :supplier
end
