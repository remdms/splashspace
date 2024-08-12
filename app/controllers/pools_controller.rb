class PoolsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  def index
    @pools = Pool.all
  end
end
