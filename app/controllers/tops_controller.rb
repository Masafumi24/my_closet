class TopsController < ApplicationController

  def class_object
    Top
  end

  def new
    @top = TopsFormObject.new
  end

  def create
    @top = TopsFormObject.new(tops_params)
    @top.save ? (redirect_to root_path) : (render "new")
  end

  private

  def tops_params
    params.require(:top).permit(
      :image,
      :purchase_date,
      :prefecture_id,
      :shop_id,
      :brand_name,
      color_ids: [],
      season_ids: [],
      brand_ids: [],
    )
  end
end
