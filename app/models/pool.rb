class Pool < ApplicationRecord
  belongs_to :user
  has_many :bookings
  # ligne suivante à decommenter si nécessaire
  # has_many :users, through: :bookings

  # on lie une photo Active Storage (ajout Remi)
  has_one_attached :photo
  
  validates :address, presence: true
  validates :name, presence: true
  validates :price_per_day, presence: true
end
