class PoolsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  before_action :set_pool, only: [:show]
  def index
    @pools = Pool.all
  end

  def show
    @booking = Booking.new
  end

  private

  def set_pool
    @pool = Pool.find(params[:id])
  end
end
