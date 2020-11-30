class ShoesController < ApplicationController
  def new
    @shoe = ShoesFormObject.new
  end

  def create
    @shoe = ShoesFormObject.new(tops_params)
    @shoe.save ? (redirect_to root_path) : (render "new")
  end

  private

  def tops_params
    params.require(:shoe).permit(
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
