class Bathroom < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, dependent: :destroy
  validates :title, :address, :description, :price, presence: true
  validates :title, :address, uniqueness: true
  has_many_attached :photos

  include PgSearch::Model
  pg_search_scope :search_by_title,
                  against: [:title],
                  associated_against: {
                    user: [:name]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
