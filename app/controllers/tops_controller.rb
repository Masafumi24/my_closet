class TopsController < ApplicationController
  def new
    @top = FormTopNew.new
  end

  def create
    @top = FormTopNew.new(tops_params)
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
