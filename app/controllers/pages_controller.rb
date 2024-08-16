class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @booking_requests = Booking.where(pool: @user)
  end

  def mybookings
    @bookings = current_user.bookings
  end
end
