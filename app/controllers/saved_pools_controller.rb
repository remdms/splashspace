class SavedPoolsController < ApplicationController
  before_action :authenticate_user!

  def index
    @saved_pools = current_user.saved_pools
  end

  def create
    @pool = Pool.find(params[:pool_id])
    @saved_pool = current_user.saved_pools.build(pool: @pool)

    if @saved_pool.save
      redirect_to saved_pools_path, anchor: @pool.id, notice: "Piscine sauvegardée avec succès."
    else
      redirect_to pools_path, alert: "Impossible de sauvegarder la piscine."
    end
  end

  def destroy
    @pool = Pool.find(params[:pool_id])
    @saved_pool = current_user.saved_pools.find_by(pool: @pool)
    if @saved_pool.destroy
      redirect_to request.referrer, aler: "Piscine enlevée avec succès"
    end
  end
end
