class CartProduct < ApplicationRecord
    
    belongs_to :member
    belongs_to :product
    
    validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 1}
end
