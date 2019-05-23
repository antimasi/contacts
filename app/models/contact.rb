class Contact < ApplicationRecord
    validates :name,:dateOfBirth, presence: true
    has_many :phones,dependent: :destroy
    
                   
end
