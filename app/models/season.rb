class Season < ApplicationRecord
  has_many :other_seasons
  has_many :others, through: :other_seasons

  has_many :outerwear_seasons
  has_many :outerwears, through: :outerwear_seasons

  has_many :pant_seasons
  has_many :pants, through: :pant_seasons

  has_many :shoe_seasons
  has_many :shoes, through: :shoe_seasons

  has_many :top_seasons
  has_many :tops, through: :top_seasons

  class << self
    # 各中間テーブルから、色のデータを取得
    def prepare_item_season_data
      result = [TopSeason, OuterwearSeason, PantSeason, ShoeSeason, OtherSeason].map do |item|
        item.pluck('season_id')
      end
      result
    end

    # 全ての色データを取得し、ハッシュ形式に格納する
    def season_data_acquisition_for_graphs
      all_item_season_data = prepare_item_season_data
      result_return_data = {}
      all_item_season_data.each do |model_all_data|
        next unless model_all_data != []

        model_all_data.each do |find_data|
          # ハッシュのキーが存在するかによって追加か更新かを分岐
          result_return_data.key?(find_data) ? result_return_data[find_data] += 1 : result_return_data[find_data] = 1
        end
      end
      # 個数であるvalueが大きい順に並べ替える
      result_return_data = result_return_data.sort { |(_k1, v1), (_k2, v2)| v2 <=> v1 }.to_h
    end

    # グラフの背景色用のデータを取得
    def background_season_data_acquisition_for_graphs(closet_season_data)
      result_background_season_data = []
      season_data = Season.all
      closet_season_data.each do |key, _val|
        season_data.each do |data|
          result_background_season_data << data.background_color if key == data.id
        end
      end
      result_background_season_data
    end
  end
end
