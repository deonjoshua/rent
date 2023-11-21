class Tool < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  has_many :bookings
end
