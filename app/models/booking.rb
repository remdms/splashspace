class Booking < ApplicationRecord
  belongs_to :pool
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true, comparison: { greater_than: :start_date }
  validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validate :no_overlapping_bookings

  private

  def no_overlapping_bookings
    if pool && start_date && end_date
      overlapping_bookings = pool.bookings.where.not(id: id).where("start_date < ? AND end_date > ?", end_date, start_date)
      if overlapping_bookings.exists?
        errors.add(:base, "This booking overlaps with another booking for the same pool")
      end
    end
  end
end
