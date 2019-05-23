class Phone < ApplicationRecord
  validates :phoneNumber, presence: true
  belongs_to :contact
end
