class ClosetController < ApplicationController
  def index
    # グラフ用の色データ、背景色を取得
    @color_graph_data = Color.color_data_acquisition_for_graphs
    @color_background_colors = Color.background_color_data_acquisition_for_graphs(@color_graph_data)
    # グラフ用の季節データ、背景色を取得
    @season_graph_data = Season.season_data_acquisition_for_graphs
    @season_background_seasons = Season.background_season_data_acquisition_for_graphs(@season_graph_data)
  end
end
