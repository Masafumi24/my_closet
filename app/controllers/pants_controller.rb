class PantsController < ApplicationController
  def new
    @pant = PantsFormObject.new
  end

  def create
    @pant = PantsFormObject.new(pants_params)
    @pant.save ? (redirect_to root_path) : (render "new")
  end

  private

  def pants_params
    params.require(:pant).permit(
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
