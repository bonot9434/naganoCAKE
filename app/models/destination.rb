class Destination < ApplicationRecord
    
  belongs_to :member
  
    validates :postal_code, :address, :name, presence: true
    
end
