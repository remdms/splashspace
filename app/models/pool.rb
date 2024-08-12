class Pool < ApplicationRecord
  belongs_to :user
  has_many :bookings
  # ligne suivante à decommenter si nécessaire
  # has_many :users, through: :bookings

  # on lie une picture Active Storage
  # has_one_attached :picture
  validates :address, presence: true
  validates :name, presence: true
  validates :price_per_day, presence: true
end
