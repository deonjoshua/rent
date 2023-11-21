class Tool < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :condition, presence: true, inclusion: { in: %w(Mint Excellent Good Fair  Poor) }
  has_many :bookings
  has_one_attached :image
end
