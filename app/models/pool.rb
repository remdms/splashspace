class Pool < ApplicationRecord
  belongs_to :user
  has_many :bookings
  # ligne suivante à decommenter si nécessaire
  # has_many :users, through: :bookings

  # on lie une picture Active Storage
  # has_one_attached :picture
  validates :address, presence: true
  validates :name, presence: true, length: { maximum: 100 }
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
  validates :overview, length: { maximum: 1500 }
end
