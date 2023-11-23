class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tool
  validates :start_date, :end_date, presence: true
end
