class AccessoriesController < ApplicationController
  def new
    @accessory = AccessoriesFormObject.new
  end

  def create
    @accessory = AccessoriesFormObject.new(accessories_params)
    @accessory.save ? (redirect_to root_path) : (render "new")
  end

  private

  def accessories_params
    params.require(:accessory).permit(
      :image,
      :purchase_date,
      :prefecture_id,
      :shop_id,
      :brand_name,
      color_ids: [],
      brand_ids: [],
    )
  end
end
