class OthersFormObject
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
    Other.new(image: image,
            purchase_date: purchase_date,
            prefecture_id: prefecture_id)
  end

  def save
    return false if invalid?

    other = Other.new(image: image, purchase_date: purchase_date, prefecture_id: prefecture_id)
    other.save
    # ブランドを保存する
    other.brands.create(name: brand_name)
    # アイテムのブランドIDを保存する
    brand_ids.each { |brand_id| other.other_brands.create(brand_id: brand_id) if brand_id != ""}
    # アイテムのカラーを保存する
    color_ids.each { |color_id| other.other_colors.create(color_id: color_id) if color_id != ""}
    # アイテムの季節を保存する
    season_ids.each { |season_id| other.other_seasons.create(season_id: season_id) if season_id != ""}
  end
end