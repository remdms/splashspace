class PoolsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  before_action :set_pool, only: [:show]
  def index
    @pools = Pool.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @pool = Pool.new
  end

  def create
    @pool = Pool.new(pool_params)
    @pool.user = current_user
    if @pool.save
      redirect_to pool_path(@pool)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_pool
    @pool = Pool.find(params[:id])
  end

  def pool_params
    params.require(:pool).permit(:name, :address, :area, :pool_type, :price_per_day, :photo)
  end
end
