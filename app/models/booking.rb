class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :location

  validates :date, presence: true
  validates :location, presence: true
  validates :status, presence: true
end
