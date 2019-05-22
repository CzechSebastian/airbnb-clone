class Booking < ApplicationRecord
	STATUS = ['pending', 'accepted', 'declined']
  belongs_to :user
  belongs_to :location

  validates :date_in, presence: true
  validates :date_out, presence: true
  validates :location, presence: true
  validates :status, presence: true 
end
