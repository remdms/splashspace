class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @pool = Pool.find(params[:pool_id])
    @booking = Booking.new(booking_params)
    @booking.pool = @pool
    @booking.user = current_user
    @booking.status = "pending"
    @booking.total_price = (@booking.end_date.day - @booking.start_date.day) * @booking.pool.price_per_day
    if @booking.save
      redirect_to booking_path(@booking), notice: "Your booking has been created"
    else
      render "pools/show", status: :unprocessable_entity
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = 'confirmed'
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = 'declined'
    @booking.save
    redirect_to dashboard_path
  end

  def cancel
    @booking = Booking.find(params[:id])
    @booking.status = 'cancelled'
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
