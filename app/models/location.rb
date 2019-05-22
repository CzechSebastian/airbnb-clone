class Location < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  CATEGORY = ["landscape", "urban", "field", "beach", "plain"]

  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates :description, presence: true

end
