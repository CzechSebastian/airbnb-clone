class Location < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :description, presence: true

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end
end
