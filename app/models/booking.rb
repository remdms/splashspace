class Booking < ApplicationRecord
  belongs_to :pool
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true, comparison: { greater_than: :start_date }
  validates :total_price, presence: true
end
