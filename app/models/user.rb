class User < ApplicationRecord
  has_many :bookings
  has_many :locations, dependent: :destroy
  has_many :booked_locations, through: :bookings, source: :location

  # validates :f_name, presence: true
  # validates :l_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
