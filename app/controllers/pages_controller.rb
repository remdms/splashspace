class PagesController < ApplicationController
  def home
  end

  def mybookings
    @bookings = current_user.bookings
    raise
  end
end
