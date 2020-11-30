class OuterwearsController < ApplicationController
  def new
    @outerwear = Outerwear.new
  end

  def create
    @outerwear = OuterwearsFormObject.new(outerwears_params)
    @outerwear.save ? (redirect_to root_path) : (render "new")
  end

  private

  def outerwears_params
    params.require(:outerwear).permit(
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
