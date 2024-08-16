class PoolsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :index
  before_action :set_pool, only: [:show]

  def index
    if params[:query].present?
      @pools = Pool.search_by_name_and_overview(params[:query])
    else
      @pools = Pool.all
    end
    @markers = @pools.geocoded.map do |pool|
      {
        lat: pool.latitude,
        lng: pool.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { pool: pool }),
        marker_html: render_to_string(partial: "map_marker", locals: { pool: pool })
      }
    end
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
      redirect_to saved_pools(@pool)
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
