class Destination < ApplicationRecord
    
  belongs_to :member
  
    validates :postal_code, :address, :name, presence: true
    
  def view_name_and_id
    '〒' + self.postal_code + self.address + self.name
  end
    
end
