class UsersController < ApplicationController
  def show
    @user = current_user
    # @booking = Booking.find(params[:id])
  end
end
