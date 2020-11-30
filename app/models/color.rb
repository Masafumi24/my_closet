class Color < ApplicationRecord
  has_many :accessory_colors
  has_many :accessories, through: :color_brands

  has_many :other_colors
  has_many :others, through: :other_colors

  has_many :outerwear_colors
  has_many :outerwears, through: :outerwear_colors

  has_many :pant_colors
  has_many :pants, through: :pant_colors

  has_many :shoe_colors
  has_many :shoes, through: :shoe_colors

  has_many :top_colors
  has_many :tops, through: :top_colors

  class << self
    # #各中間テーブルから、色のデータを取得
    def prepare_item_color_data
      result = [TopColor, OuterwearColor, PantColor, ShoeColor, AccessoryColor, OtherColor].map do |item|
        item.pluck('color_id')
      end
      result
    end

    # #全ての色データを取得し、ハッシュ形式に格納する
    def color_data_acquisition_for_graphs
      all_item_color_data = prepare_item_color_data
      result_return_data = {}
      all_item_color_data.each do |model_all_data|
        next unless model_all_data != []

        model_all_data.each do |find_data|
          # ハッシュのキーが存在するかによって追加か更新かを分岐
          result_return_data.key?(find_data) ? result_return_data[find_data] += 1 : result_return_data[find_data] = 1
        end
      end
      # 個数であるvalueが大きい順に並べ替える
      result_return_data = result_return_data.sort { |(_k1, v1), (_k2, v2)| v2 <=> v1 }.to_h
    end

    def background_color_data_acquisition_for_graphs(closet_color_data)
      result_background_color_data = []
      color_data = Color.all
      closet_color_data.each do |key, _val|
        color_data.each do |data|
          result_background_color_data << data.background_color if key == data.id
        end
      end
      result_background_color_data
    end
  end
end
