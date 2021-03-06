class OuterwearsFormObject
  include ActiveModel::Model

  attr_accessor :image,
                :purchase_date,
                :prefecture_id,
                :brand_name, # ブランド保存
                :brand_ids, # ブランドのIDを保存
                :color_ids, # カラーを保存
                :season_ids # 季節を保存

  validates :image, presence: true
  validates :purchase_date, presence: true

  def to_model
    Outerwear.new(image: image,
                  purchase_date: purchase_date,
                  prefecture_id: prefecture_id)
  end

  def save
    return false if invalid?

    outerwear = Outerwear.new(image: image, purchase_date: purchase_date, prefecture_id: prefecture_id)
    outerwear.save
    # ブランドを保存する
    outerwear.brands.create(name: brand_name)
    # アイテムのブランドIDを保存する
    brand_ids.each { |brand_id| outerwear.outerwear_brands.create(brand_id: brand_id) if brand_id != ""}
    # アイテムのカラーを保存する
    color_ids.each { |color_id| outerwear.outerwear_colors.create(color_id: color_id) if color_id != ""}
    # アイテムの季節を保存する
    season_ids.each { |season_id| outerwear.outerwear_seasons.create(season_id: season_id) if season_id != ""}
  end
end
