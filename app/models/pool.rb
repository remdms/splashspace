class Pool < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :saved_pools, dependent: :destroy
  has_many :saved_by_users, through: :saved_pools, source: :user
  # ligne suivante à decommenter si nécessaire
  # has_many :users, through: :bookings

  # on lie une photo Active Storage (ajout Remi)
  has_one_attached :photo
  # Validations
  validates :address, presence: true
  validates :name, presence: true, length: { maximum: 100 }
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
  validates :overview, length: { maximum: 1500 }
  # Geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
