class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @booking_requests = Booking.where(pool: @user)
  end
end
