class Bathroom < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, dependent: :destroy
  validates :title, :address, :description, :price, presence: true
  validates :title, :address, uniqueness: true
  has_many_attached :photos
end
