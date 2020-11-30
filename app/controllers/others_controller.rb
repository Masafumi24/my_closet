class OthersController < ApplicationController
  def new
    @other = OthersFormObject.new
  end

  def create
    @other = OthersFormObject.new(others_params)
    @other.save ? (redirect_to root_path) : (render "new")
  end

  private

  def others_params
    params.require(:other).permit(
      :image,
      :purchase_date,
      :prefecture_id,
      :shop_id,
      :brand_name,
      color_ids: [],
      season_ids: [],
      brand_ids: []
    )
  end
end
