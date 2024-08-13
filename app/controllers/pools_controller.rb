class PoolsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  def index
    @pools = Pool.all
  end

  def show
    set_pool
    @booking = Booking.new
  end

  private

  def set_pool
    @pool = Pool.find(params[:id])
  end
end
